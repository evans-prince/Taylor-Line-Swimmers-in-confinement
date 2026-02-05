/// Author: Adyant Agrawal ////
/// Collective motion of taylor lines ///
/// Parallel boundary ///


#include <cmath>
#include <cstdlib>
#include <fstream>
#include <string>
#include <iostream>
#include <omp.h>
#include <random>


#define L 101
#define B 101	//Length of boundary
#define T 1000//200000	//Time of Simulation
#define Navg 10	//Fluid Particles per grid cell


using namespace std;

std::string name;


const int nT =1;	//no. of Taylor lines
const int P =100;	//no. of beeds
const double Dt = 0.0001;	//integration time step
const float l = 0.5;	//eqlbm distance bw beads
const float const_k = 250000;	//bending const
const float D = 1000000;	// spring const
const float rKbT = 1;	// temp of fluid
const float M = 10.0;	// mass of bead
const float epsilon = 13.75;	//leonard jones
const double pi = 4*atan(1.0);


const int N = L*B*Navg + P*nT;	//fluid particle number + Taylor beads

const float dt = 100*Dt;	//MPCD time step

class taylor{
	public:
	double r[P][2];           // positions
	double v[P][2];           // velocities

};

double t = 0;
float r[N][2];           // positions
float v[N][2];           // velocities
taylor tl[nT];

float vv[nT];		//frequency
float phi[nT];		//initial phase
int col[nT];
//float F3[nT][P][2]; //neighbour interaction LJ force

double df;      //difference in frequency

void initialize();		// initialise positions of particles
void old_initialize();	// initialise from a saved state

void stream();		// streaming step MPCD particles
void collision();	// collision step MPCD particles
void propel();		// velocity for beads of taylor lines
void TaylorStream();	//streaming step taylor lines

float gaussrand();	//generates gauss rand no
float unirand();
void writefile();

void parameters();	//stores parameters of the simulation for reference
void gnuplot();		//writes code for gnuplot animation

void backup();		//backs up all data after spec number of steps
bool restore();		//restore from backup

void check_neighbour();		// function to check the beads outside the box and enforce parallel boundary

int checkout(double a, double b);

//hashing array for neighbouring beads
struct neighbour{
    int n1,n2;
    int p1,p2;
};
neighbour near[nT*P*20];

int n_near;	//number of nearby particles

float pass=0,    max_ac = 0.0001;


typedef std::mt19937 rng_type;
std::mt19937 generator (123);
std::uniform_real_distribution<float> dis(0.0,1.0);
std::normal_distribution<float> nor(0.0, 1.0);

rng_type rng;

//functions to make file name//
int strlen(char);
void reverse(char);
void itoa(int, char);
string intToString(int);
/////////////////////

int main() {

    int Seed = 0;
 //   cout << "Enter Seed Val:";
 //   cin>>Seed;

///naming of file///
 //   string DF;
 //   cout << "Enter df:";
 //   cin>>DF;
    df=0;

    name = "df"+intToString(int(df*1000));

////////////////////
    int sysret = system(("mkdir "+name).c_str());
    sysret = system(("mkdir "+name+"/rp").c_str());
    sysret = system(("mkdir "+name+"/d").c_str());

    if (sysret == -1)
        exit(0);


///random number generators seeds///
    generator.seed(Seed);
    rng.seed(Seed);

//////////////////

    initialize();

   // old_initialize();


    pass = int(t/10)*10;

////////MAIN MPCD AND TAYLOR LINE SIMULATION LOOP////////


    while(t<=T){

        if(t>=pass){
            writefile();
        }

        check_neighbour();
        collision();
        stream();


        for(int i=0; i<100; i++){
            TaylorStream();
            propel();
        }
    }
///////////////////////////////////////////////////////

    return 0;

}

void initialize() {


  for (int p = 0; p < N - P*nT; p++){

        r[p][0] = (L-0.000001)*unirand();
        r[p][1] = (B-0.000001)*unirand();
    }


    // initialize velocities
    for (int p = 0; p < N; p++)
        for (int i = 0; i < 2; i++)
            v[p][i] = gaussrand();


	/// intialise positions of Taylor lines in most random fashion///
        float ph,a0,b0;
        for(int j =0; j<nT; j++){
             ph=unirand()*(2*pi);
             a0=unirand()*(L-0.5)  +0.25;
             b0=unirand()*(B-0.5)  +0.25;
             for(int n = 0; n < P; n++){
             tl[j].v[n][0] = 0 ;
             tl[j].v[n][1] = 0 ;
             tl[j].r[n][0] = a0 + n*l*cos(ph);
             tl[j].r[n][1] = b0 + n*l*sin(ph);

         }
        }

         check_neighbour();

    for (int j = 0; j < nT; j++)
        phi[j]=unirand()*2*pi;

    for (int j = 0; j < nT; j++)
         switch((j<nT/2)?0:1){
         case 0: vv[j]=0.003 - df/2;
         col[j]=1;
         break;
         case 1: vv[j]=0.003 + df/2;;
         col[j]=7;
         break;
     }

   // restore();
    parameters();

    writefile();

}

void old_initialize(){

    ifstream myfile("start.csv");
    char seperator;
    taylor oldtl[nT];

            for (int j = 0; j < P ; j++){
                for (int i = 0; i < nT ; i++){
                    myfile>>seperator>>oldtl[i].r[j][0]>>seperator>>oldtl[i].r[j][1];
                    }
            }
            for (int i = 0; i < nT ; i++)
                    myfile>>seperator>>phi[i]>>seperator;

            for (int i = 0; i < nT ; i++){
                switch(0){


                    case 0:     for (int j = 0; j < P ; j++){
                                    tl[i].r[j][0]=oldtl[i].r[j][0];
                                    tl[i].r[j][1]=oldtl[i].r[j][1];
                                }
                                break;

                    case 1:     for (int j = 0; j < P ; j++){
                                    tl[i].r[j][0]=oldtl[i].r[P-1-j][0];
                                    tl[i].r[j][1]=oldtl[i].r[P-1-j][1];
                                }
                                phi[i]=2*pi-phi[i];
                                break;
                }
            }

    t=10;

}

double shift(double R,double dx){
	R += dx;
	if(R >= L){
		R-= L;
	}
	if(R < 0){
		R+= L;
	}
	return R;
}

void stream(){

	for(int i=0;i<N - P*nT;i++){

		r[i][0] += dt*v[i][0];
		r[i][1] += dt*v[i][1];

        r[i][0] = int(r[i][0] + L)%L + r[i][0]+L - int(r[i][0]+L);
        r[i][1] = int(r[i][1] + B)%B + r[i][1]+B - int(r[i][1]+B);

	}
}

void collision(){

    double vr[N][2];
	int a[N], b[N];
	double vravg[L+1][B+1][2];
	double u[L+1][B+1][2];
	double rcm[L+1][B+1][2];
	double Ncell[L+1][B+1];
    double NTcell[L+1][B+1];
	double angular_mom[L+1][B+1];
	double I[L+1][B+1];

	double e[2];



//initial grid shift
	e[0] =  unirand() ;
	e[1] =  unirand() ;

//storing beads as MPCD particles
	for(int j=0; j<nT; j++)
        for(int i=0; i<P; i++){
            r[N - P*nT + j*P + i][0] = int(tl[j].r[i][0] + L)%L + tl[j].r[i][0]+L - int(tl[j].r[i][0]+L);
            r[N - P*nT + j*P + i][1] = int(tl[j].r[i][1] + B)%B + tl[j].r[i][1]+B - int(tl[j].r[i][1]+B);
            v[N - P*nT + j*P + i][0] = tl[j].v[i][0];
		    v[N - P*nT + j*P + i][1] = tl[j].v[i][1];
        }


// Vr for fluid

	for (int p = 0; p < N - P*nT; p++)
		for (int i = 0; i < 2; i++)
		    vr[p][i] = gaussrand();


// Vr for Taylor
	for (int p = N - P*nT; p < N; p++)
        for (int i = 0; i < 2; i++)
            vr[p][i] = gaussrand()/sqrt(M);

// initialise parameters
	for(int i=0; i<L+1 ;i++)
		for(int j=0; j<B+1 ;j++){
			vravg[i][j][0] =0;
			vravg[i][j][1] =0;
			u[i][j][0] =0;
			u[i][j][1] =0;
			rcm[i][j][0] =0;
			rcm[i][j][1] =0;
			angular_mom[i][j] =0;
			I[i][j] =0;
			Ncell[i][j] =0;
            NTcell[i][j] =0;
	}

	for (int i = 0; i < N - P*nT; i++){
		a[i] = int(r[i][0] + e[0])%L;
		b[i] = int(r[i][1] + e[1])%B;
        Ncell[a[i]][b[i]]++;
		NTcell[a[i]][b[i]] ++;
		vravg[a[i]][b[i]][0] += vr[i][0];
		vravg[a[i]][b[i]][1] += vr[i][1];
		u[a[i]][b[i]][0] += v[i][0];
		u[a[i]][b[i]][1] += v[i][1];
		rcm[a[i]][b[i]][0] += r[i][0];
		rcm[a[i]][b[i]][1] += r[i][1];

	}

    for (int i = N - P*nT; i < N; i++){
		a[i] = int(r[i][0] + e[0]);
		b[i] = int(r[i][1] + e[1]);
        Ncell[a[i]][b[i]]++;
		NTcell[a[i]][b[i]] += M;
		vravg[a[i]][b[i]][0] += M*vr[i][0];
		vravg[a[i]][b[i]][1] += M*vr[i][1];
		u[a[i]][b[i]][0] += M*v[i][0];
		u[a[i]][b[i]][1] += M*v[i][1];
		rcm[a[i]][b[i]][0] += M*r[i][0];
		rcm[a[i]][b[i]][1] += M*r[i][1];
	}

    for(int i=0; i<L+1 ;i++){
		for(int j=0; j<B+1 ;j++){
          if(Ncell[i][j]>1){
			vravg[i][j][0] /= NTcell[i][j];
			vravg[i][j][1] /= NTcell[i][j];
            u[i][j][0] /= NTcell[i][j];
			u[i][j][1] /= NTcell[i][j];
			rcm[i][j][0] /= NTcell[i][j];
			rcm[i][j][1] /= NTcell[i][j];
            }
        }
    }


    /// I and angular momentum calculations ///
    for (int i = 0; i < N - P*nT; i++){
		I[a[i]][b[i]] += ((r[i][0] - rcm[a[i]][b[i]][0])*(r[i][0] - rcm[a[i]][b[i]][0]) + (r[i][1] - rcm[a[i]][b[i]][1])*(r[i][1] - rcm[a[i]][b[i]][1]));
		angular_mom[a[i]][b[i]] += ((r[i][0] - rcm[a[i]][b[i]][0]) * (v[i][1] - vr[i][1]) - (r[i][1] - rcm[a[i]][b[i]][1]) * (v[i][0] - vr[i][0]));
  	}

	for (int i = N - P*nT; i < N; i++){
		I[a[i]][b[i]] += M*((r[i][0] - rcm[a[i]][b[i]][0])*(r[i][0] - rcm[a[i]][b[i]][0]) + (r[i][1] - rcm[a[i]][b[i]][1])*(r[i][1] - rcm[a[i]][b[i]][1]));
		angular_mom[a[i]][b[i]] += M*((r[i][0] - rcm[a[i]][b[i]][0]) * (v[i][1] - vr[i][1]) - (r[i][1] - rcm[a[i]][b[i]][1]) * (v[i][0] - vr[i][0]));
  	}

///////////////////////////////////////////////////////////

//MPCD STEP

    for(int i=0; i<N ; i++){
		if(Ncell[a[i]][b[i]]>1){

            v[i][0] = u[a[i]][b[i]][0] + vr[i][0] - vravg[a[i]][b[i]][0] - (angular_mom[a[i]][b[i]]*(r[i][1] - rcm[a[i]][b[i]][1]))/I[a[i]][b[i]];
            v[i][1] = u[a[i]][b[i]][1] + vr[i][1] - vravg[a[i]][b[i]][1] + (angular_mom[a[i]][b[i]]*(r[i][0] - rcm[a[i]][b[i]][0]))/I[a[i]][b[i]];

		}
    }


  //storing back the vel of beads
       for(int j=0; j<nT; j++)
        for(int i=0; i<P; i++){
            tl[j].v[i][0] = v[N - P*nT + j*P + i][0];
		    tl[j].v[i][1] = v[N - P*nT + j*P + i][1];
        }

}

void TaylorStream(){

//simple Euler integration
	for(int j=0; j<nT; j++){
		for(int i=0; i<P; i++){

		    tl[j].r[i][0] += Dt*tl[j].v[i][0];
		    tl[j].r[i][1] += Dt*tl[j].v[i][1];

/*
	/// Slip condiion, bounce back rule

				if (tl[j].r[i][0]*tl[j].r[i][0]+tl[j].r[i][1]*tl[j].r[i][1]>=1.0*(R)*(R)){
					double vy,vx,m1;
					double _D = R*R*(tl[j].v[i][0]*tl[j].v[i][0] + tl[j].v[i][1]*tl[j].v[i][1]) - (tl[j].v[i][0]*tl[j].r[i][1] - tl[j].v[i][1]*tl[j].r[i][0])*(tl[j].v[i][0]*tl[j].r[i][1] - tl[j].v[i][1]*tl[j].r[i][0]);
					if(_D>0){
		            double _t = (-tl[j].v[i][0]*tl[j].r[i][0] - tl[j].v[i][1]*tl[j].r[i][1] + sqrt(_D))/(tl[j].v[i][0]*tl[j].v[i][0] + tl[j].v[i][1]*tl[j].v[i][1]);
		            tl[j].r[i][0] += _t*tl[j].v[i][0];
		            tl[j].r[i][1] += _t*tl[j].v[i][1];
		            vx	= tl[j].v[i][0];
		            vy	= tl[j].v[i][1];
		            m1 = -(tl[j].r[i][0]/tl[j].r[i][1]);
		            tl[j].v[i][0] = ((1-m1*m1)*vx + 2*m1*vy)/(1+m1*m1);
		            tl[j].v[i][1] = (-(1-m1*m1)*vy + 2*m1*vx)/(1+m1*m1);
		            tl[j].r[i][0] += -_t*tl[j].v[i][0];
		            tl[j].r[i][1] += -_t*tl[j].v[i][1];
		        }
		        else{
		            vx	= tl[j].v[i][0];
		            vy	= tl[j].v[i][1];
		            m1 = -(tl[j].r[i][0]/tl[j].r[i][1]);
		            tl[j].v[i][0] = ((1-m1*m1)*vx + 2*m1*vy)/(1+m1*m1);
		            tl[j].v[i][1] = (-(1-m1*m1)*vy + 2*m1*vx)/(1+m1*m1);
		            tl[j].r[i][0] += 0.5*Dt*tl[j].v[i][0];
		            tl[j].r[i][1] += 0.5*Dt*tl[j].v[i][1];
		        }
		    }*/
		}
	}

	t= t+Dt;
}

void propel(){

    float ac[nT][P][2];
    max_ac = 0.0001;

    //crossoverF();


	for(int j=0; j<nT; j++){


        float F1[P][2];		// hookes force
        float F2[P][2];		// bending force
        float lx[P], ly[P];	// vectors of l
        float ta[P][2];		// vector distance between adjacent beeds
        float alpha[P];		// rotation angle
        float cos_alpha[P], sin_alpha[P];


        for(int i=0; i<P; i++)
            alpha[i] =  0.075*sin(phi[j] + 2*pi*(vv[j]*t + (i+1.0)*(2.0/(P))));

        for(int i=0; i<P; i++)
            cos_alpha[i] =  cos(alpha[i]);

        for(int i=0; i<P; i++)
            sin_alpha[i] =  sin(alpha[i]);

        for(int i1=0; i1<P-1; i1+=4){
            for (int i2 = 0; i2 < 4 && i1+i2 <P-1; i2++) {
                int i = i1+i2;
                ta[i][0] = tl[j].r[i+1][0] - tl[j].r[i][0];
                ta[i][1] = tl[j].r[i+1][1] - tl[j].r[i][1];

                lx[i] = l*ta[i][0]/sqrt(ta[i][0]*ta[i][0] + ta[i][1]*ta[i][1]);
                ly[i] = l*ta[i][1]/sqrt(ta[i][0]*ta[i][0] + ta[i][1]*ta[i][1]);
            }
        }

		for(int i=1; i<P-1; i++){
			F1[i][0] = -D*(ta[i-1][0] - lx[i-1]) + D*(ta[i][0] - lx[i]);
			F1[i][1] = -D*(ta[i-1][1] - ly[i-1]) + D*(ta[i][1] - ly[i]);
		}


		F1[0][0] =  D*(ta[0][0] - lx[0]);
		F1[0][1] =  D*(ta[0][1] - ly[0]);
		F1[P-1][0] = -D*(ta[P-2][0] - lx[P-2]);
		F1[P-1][1] = -D*(ta[P-2][1] - ly[P-2]);


		for(int i=2; i<P-2; i++){
			F2[i][0] = const_k*(2*ta[i][0] - 2*ta[i-1][0] + cos_alpha[i-2]*ta[i-2][0] - sin_alpha[i-2]*ta[i-2][1] + cos_alpha[i-1]*ta[i][0] + sin_alpha[i-1]*ta[i][1] - cos_alpha[i-1]*ta[i-1][0] + sin_alpha[i-1]*ta[i-1][1] - cos_alpha[i]*ta[i+1][0] - sin_alpha[i]*ta[i+1][1] );
			F2[i][1] = const_k*(2*ta[i][1] - 2*ta[i-1][1] + sin_alpha[i-2]*ta[i-2][0] + cos_alpha[i-2]*ta[i-2][1] - sin_alpha[i-1]*ta[i][0] + cos_alpha[i-1]*ta[i][1] - sin_alpha[i-1]*ta[i-1][0] - cos_alpha[i-1]*ta[i-1][1] + sin_alpha[i]*ta[i+1][0] - cos_alpha[i]*ta[i+1][1] );
		}

		F2[0][0] = const_k*(ta[0][0] - cos_alpha[0]*ta[1][0] - sin_alpha[0]*ta[1][1]);
		F2[0][1] = const_k*(ta[0][1] + sin_alpha[0]*ta[1][0] - cos_alpha[0]*ta[1][1]);
		F2[P-2][0] = const_k*(ta[P-2][0] - 2*ta[P-3][0] + cos_alpha[P-4]*ta[P-4][0] - sin_alpha[P-4]*ta[P-4][1] + cos_alpha[P-3]*ta[P-2][0] + sin_alpha[P-3]*ta[P-2][1] - cos_alpha[P-3]*ta[P-3][0] + sin_alpha[P-3]*ta[P-3][1] );
		F2[P-2][1] = const_k*(ta[P-2][1] - 2*ta[P-3][1] + sin_alpha[P-4]*ta[P-4][0] + cos_alpha[P-4]*ta[P-4][1] - sin_alpha[P-3]*ta[P-2][0] + cos_alpha[P-3]*ta[P-2][1] - sin_alpha[P-3]*ta[P-3][0] - cos_alpha[P-3]*ta[P-3][1] );
		F2[1][0] = const_k*(2*ta[1][0] - ta[0][0] + cos_alpha[0]*ta[1][0] + sin_alpha[0]*ta[1][1] - cos_alpha[0]*ta[0][0] + sin_alpha[0]*ta[0][1] - cos_alpha[1]*ta[2][0] - sin_alpha[1]*ta[2][1] );
		F2[1][1] = const_k*(2*ta[1][1] - ta[0][1] - sin_alpha[0]*ta[1][0] + cos_alpha[0]*ta[1][1] - sin_alpha[0]*ta[0][0] - cos_alpha[0]*ta[0][1] + sin_alpha[1]*ta[2][0] - cos_alpha[1]*ta[2][1] );
		F2[P-1][0] = -const_k*(ta[P-2][0] - cos_alpha[P-3]*ta[P-3][0] + sin_alpha[P-3]*ta[P-3][1]);
		F2[P-1][1] = -const_k*(ta[P-2][1] - sin_alpha[P-3]*ta[P-3][0] - cos_alpha[P-3]*ta[P-3][1]);



        for (int i=0; i<P; i++){
			ac[j][i][0] = (F1[i][0] + F2[i][0] )/M;
			ac[j][i][1] = (F1[i][1] + F2[i][1] )/M;
        }


    }

//modify velocities

    for(int j=0; j<nT; j++)
        for (int i=0; i<P; i++){
			tl[j].v[i][0] += ac[j][i][0]*Dt;
			tl[j].v[i][1] += ac[j][i][1]*Dt;
		}


}

void check_neighbour(){

// NOT USED THIS
    double tlr1,tlr2,tlr3,tlr4, tlr[2], r_bw_bead;
    n_near=0;
    int pos;

    for(int j=0; j<nT; j++){
        pos= checkout(tl[j].r[P/2][0],tl[j].r[P/2][1]);
        switch(pos)
            {
                    case 0: break;
                    case 1:
                        for(int i=0; i<P; i++)
                            tl[j].r[i][0]=tl[j].r[i][0]-L;
                    break;
                    case 2:
                        for(int i=0; i<P; i++)
                            tl[j].r[i][0]=tl[j].r[i][0]+L;
                    break;
                    case 3:
                        for(int i=0; i<P; i++)
                            tl[j].r[i][1]=tl[j].r[i][1]-B;
                    break;
                    case 4:
                        for(int i=0; i<P; i++)
                            tl[j].r[i][1]=tl[j].r[i][1]+B;
                    break;
                    case 5:
                        for(int i=0; i<P; i++){
                                tl[j].r[i][0]=tl[j].r[i][0]+L;
                                tl[j].r[i][1]=tl[j].r[i][1]+B;
                        }
                    break;
                    case 6:
                        for(int i=0; i<P; i++){
                            tl[j].r[i][0]=tl[j].r[i][0]+L;
                            tl[j].r[i][1]=tl[j].r[i][1]-B;
                        }
                    break;
                    case 7:
                        for(int i=0; i<P; i++){
                            tl[j].r[i][0]=tl[j].r[i][0]-L;
                            tl[j].r[i][1]=tl[j].r[i][1]+B;
                    }
                    break;
                    case 8:
                        for(int i=0; i<P; i++){
                            tl[j].r[i][0]=tl[j].r[i][0]-L;
                            tl[j].r[i][1]=tl[j].r[i][1]-B;
                    }
                    break;
                    default: break;
            }
    }


    }

int checkout(double a, double b){

    double c = 0.5*l;
        if(!((a>L-c)||(a<c)||(b>B-c)||(b<c)))
            return 0;

        if((a>L-c)&&(c<b)&&(b<B-c))
                return 1;
        else if((a<c)&&(c<b)&&(b<B-c))
                return 2;
        else if((b>B-c)&&(c<a)&&(a<L-c))
                return 3;
        else if((b<c)&&(c<a)&&(a<L-c))
                return 4;
        else if((a<c)&&(b<c))
                return 5;
        else if((a<c)&&(b>B-c))
                return 6;
        else if((a>L-c)&&(b<c))
                return 7;
        else if((a>L-c)&&(a>B-c))
                return 8;
    return -1;
}

float gaussrand(){
        return nor(generator);
}

float unirand(){
	return (1.0*rand()+1) * (1.0 / (1.0*RAND_MAX + 2)) ;		// gives equal distribution in (0, 1)

}

void writefile(){


    ofstream file(name+"/rp/file" + intToString(pass/5) + ".txt");
    ofstream file1(name+"/d/file" + intToString(pass/5) + ".txt");


            float meanr[nT][2], meanv[nT][2];

            for (int i = 0; i < nT ; i++){
                meanr[i][0] = 0; meanr[i][1] =0;
                meanv[i][0] = 0; meanv[i][1] =0;
            }

            cout<<pass<<"\t"<<n_near;
            file1<<pass<<"\t"<<"\t";
            for (int i = 0; i < nT ; i++){
                for (int j = 0; j < P ; j++){
                    meanr[i][0] += tl[i].r[j][0]/P;
                    meanr[i][1] += tl[i].r[j][1]/P;
                    meanv[i][0] += tl[i].v[j][0]/P;
                    meanv[i][1] += tl[i].v[j][1]/P;
                }
//                cout<<meanr[i][0]<<"\t"<<meanr[i][1]<<"\t"<<"\t";
                file1<<meanr[i][0]<<"\t"<<meanr[i][1]<<"\t"<<meanv[i][0]<<"\t"<<meanv[i][1]<<"\t"<<"\t";
            }


            file1<<endl<<endl;
            cout<<endl;


            for (int j = 0; j < P ; j++){
                for (int i = 0; i < nT ; i++)
                    file<<tl[i].r[j][0]<<"\t"<<tl[i].r[j][1]<<"\t";
                file<<endl;
            }
            file<<endl<<endl;

            file.close();
            file1.close();

            if(int(pass)%2000 == 0)
                backup();

            gnuplot();

            pass += 5;

}

void parameters(){

    ofstream file(name+"/parameters.csv");

    file<<"L"<<"\t"<<"B"<<"\t"<<"nT"<<endl;
    file<<L<<"\t"<<B<<"\t"<<nT<<endl;
    file<<endl<<endl;

    file<<"nT"<<"\t"<<"phi"<<"\t"<<"freq"<<endl;

    for (int i = 0; i < nT ; i++)
        file<<i+1<<"\t"<<phi[i]<<"\t"<<vv[i]<<endl;

    file.close();

    ofstream gplot(name+"/anime", ios::trunc);
    gplot.close();

}

void gnuplot(){

    ofstream gplot(name+"/anime", ios::app);

    if(pass==0){
    gplot<<"set xrange [0:"<<L<<"]"<<endl<<"set yrange [0:"<<B<<"]"<<endl;
    gplot<<"set term gif animate size 640,640 delay 2"<<endl;
    gplot<<"set output 'Taylor "<<nT<<" L"<<L<<" "<<" B"<<B<<" time"<<T<<".gif'"<<endl;
    }

    int i = pass/5;
    gplot<<"plot ";
    for(int j=0; j<nT-1; j++)
        gplot<<"'rp/file"<<i<<".txt' u "<<2*j+1<<":"<<2*j+2<<" w l lt "<<col[j]<<" notitle,\\"<<endl;
    gplot<<"'rp/file"<<i<<".txt' u "<<2*nT-1<<":"<<2*nT<<" w l lt "<<col[nT-1]<<" notitle"<<endl;

    gplot.close();

}

void backup(){

    ofstream fileb(name+"/backup.csv", ios::trunc);

    fileb<<t<<endl<<endl;
    for (int j = 0; j < P ; j++){
        for (int i = 0; i < nT ; i++)
            fileb<<tl[i].r[j][0]<<"\t"<<tl[i].r[j][1]<<"\t";
            fileb<<endl;
    }
    fileb<<endl<<endl;

    for (int j = 0; j < P ; j++){
        for (int i = 0; i < nT ; i++)
            fileb<<tl[i].v[j][0]<<"\t"<<tl[i].v[j][1]<<"\t";
            fileb<<endl;
    }
    fileb<<endl<<endl;

    for (int i = 0; i < nT ; i++)
        fileb<<phi[i]<<"\t";
    fileb<<endl<<endl<<endl;

    for (int i = 0; i < nT ; i++)
        fileb<<vv[i]<<"\t";
    fileb<<endl<<endl<<endl;

    for (int i = 0; i < nT ; i++)
        fileb<<col[i]<<"\t";
    fileb<<endl<<endl<<endl;

    for (int p = 0; p < N - P*nT; p++)
        fileb<<r[p][0]<<"\t"<<r[p][1]<<"\t"<<v[p][0]<<"\t"<<v[p][1]<<endl;

    fileb.close();

}

bool restore(){

    ifstream fileb(name+"/backup.csv");

    if(fileb){

        fileb>>t;
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int j = 0; j < P ; j++){
            for (int i = 0; i < nT ; i++)
                fileb>>tl[i].r[j][0]>>tl[i].r[j][1];
            fileb.ignore(10000, '\n');
        }
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int j = 0; j < P ; j++){
            for (int i = 0; i < nT ; i++)
                fileb>>tl[i].v[j][0]>>tl[i].v[j][1];
            fileb.ignore(10000, '\n');
        }
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int i = 0; i < nT ; i++)
            fileb>>phi[i];
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int i = 0; i < nT ; i++)
            fileb>>vv[i];
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int i = 0; i < nT ; i++)
            fileb>>col[i];
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');
        fileb.ignore(10000, '\n');

        for (int p = 0; p < N - P*nT; p++){
            fileb>>r[p][0]>>r[p][1]>>v[p][0]>>v[p][1];
            fileb.ignore(10000, '\n');
            }

        fileb.close();
        return 1;
    }
        return 0;


}

int strlen(char s[])
{
    int i = 0;
    while (s[i] != '\0')
        ++i;
    return i;
}


void reverse(char s[])
{
    int i, j;
    char c;

    for (i = 0, j = strlen(s)-1; i<j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}


void itoa(int n, char s[])
{
    int i;

    i = 0;
    do {       /* generate digits in reverse order */
        s[i++] = n % 10 + '0';   /* get next digit */
    } while ((n /= 10) > 0);     /* delete it */

    s[i] = '\0';
    reverse(s);
}

string intToString(int number)
{
char intStr[6];
itoa(number,intStr);
string ch = string(intStr);

  return ch;
}

