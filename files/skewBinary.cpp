#include <iostream>
#include <string>
#include <cmath>
using namespace std;
int skewToInt(string);
string intToSkew(int);
int main(){
	string skew;
	getline(cin,skew);
	while(skew.compare("0")!=0){
		cout<<skewToInt(skew)<<endl;
		getline(cin,skew);
	}
	return 0;
}
int skewToInt(string skewBinary){
	int skewLen=skewBinary.length();
	char bitC;
	int bit;
	int result=0;
	for(int index=0;index<skewLen;index++){
		bitC=skewBinary.at(index);
		bit=bitC-'0';
		result+=bit*(pow(2,skewLen-index)-1);
	}
	return result;
}
