#include<stdio.h>
#define SIZE 10
int stack[SIZE];
int top=-1;
void push(int res){
         int c=res;
         if(top==SIZE-1){
                printf("Stack is Overflow!\n");
  	  }
   	 else
    	{
     		  stack[++top]=c;
    	}
   }
int pop(){
    if(top==-1){
               printf("stack underflow! \n");
     }
     else
     {
     return stack[top--];
     }
   }
void display(){
     if (top!=-1) {
        printf("%d\n\n",stack[top]);
     } 
     else
     {
      printf("Stack Empty");
     }
}
int main() {
 char str[SIZE];
 int res;
        printf("Enter : ");
        scanf("%s ",str);
        for(int i=0; str[i]!='\0'; i++){
               if(str[i]!='+' && str[i]!='-' && str[i]!='*' && str[i]!='/' && str[i]!='%'){ 
                      push(str[i]-'0');// convert char into int 
                }else{
                int a=pop();
                int b=pop();			
 	        switch (str[i]) {
 	                case '+':
	                     res=b+a; 
	               break;
                      case '-':
	                     res=b-a; 
	              break;
	              case '*':
	                    res=b*a; 
	             break;
	             case '/':
	                   res=b/a; 
	             break;
	            case '%':
	                 res=b%a; 
	           break;   
		}
                      push(res);
	}
	}
	 display();
	return 0;
   }
      
