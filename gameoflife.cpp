#include<stdio.h>
#include<stdlib.h>
#include<time.h>
//#include<conio.h>

#define n 10
#define m n*n/5

int a[n][n]={0},b[n][n],i,j,k,cik;

void yaz()
{
	system("cls");
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			if (a[i][j])
				printf("X");
			else
				printf(" ");		
		}
		printf("\n");
	}
	printf("\n\n%d. nesil..",k);	
}

int komsu(int i, int j)
{
	int k=0;
	if(i>0 && j>0 && a[i-1][j-1]) k++;
	if(i>0 && a[i-1][j]) k++;
	if(i>0 && j<n-1 && a[i-1][j+1]) k++;
	if(j>0 && a[i][j-1]) k++;
	if(j<n-1 && a[i][j+1]) k++;
	if(i<n-1 && j>0 && a[i+1][j-1]) k++;
	if(i<n-1 && a[i+1][j]) k++;
	if(i<n-1 && j<n-1 && a[i+1][j+1]) k++;
	return k;						
}

void gen()
{
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			if(a[i][j] && komsu(i,j)<2) b[i][j]=0;
			else if(a[i][j] && komsu(i,j)>3) b[i][j]=0;
			else if(a[i][j] && komsu(i,j)==2 || komsu(i,j)==3) b[i][j]=1;
			else if(a[i][j]==0 && komsu(i,j)==3) b[i][j]=1;
		}
	}
	cik=1;
	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			if (a[i][j]!=b[i][j])
				cik=0;
	if(cik==0)
		for(i=0;i<n;i++)
			for(j=0;j<n;j++)
				a[i][j]=b[i][j];
}

void delay(unsigned int mseconds)
{
    clock_t goal = mseconds + clock();
    while (goal > clock());
}

int main()
{
	
	srand(time(NULL));
	
	for(k=0;k<m;k++)
	{
		do
		{
			i=rand()%n;
			j=rand()%n;
		}while(a[i][j]==1);
		a[i][j]=1;
	}

	k=0;
	do
	{
		yaz();	
		delay(500);
		gen();
		k++;
	}while(cik==0);
	
	return 0;
}
