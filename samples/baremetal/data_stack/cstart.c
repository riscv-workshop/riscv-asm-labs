unsigned int global_arr[10] = {1,2,3,4,5,6,7,8,9,10};
unsigned int global_var;

int main() {
     unsigned int local_arr[10] = {1,2,3,4,5,6,7,8,9,10};

     unsigned int init = 0; 
     for(unsigned int i = 0 ; i <= 8 ; i++){
       local_arr[9]  = init + local_arr[i];
     }

     init = 0; 
     for(unsigned int i = 0 ; i <= 8 ; i++){
       global_arr[9]  = init + global_arr[i];
     }     

     global_var = 10;
 }


