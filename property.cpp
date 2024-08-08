#include <cutils/properties.h>
#include <utils/threads.h>
#include <pthread.h>
#include <sys/prctl.h>
#include <semaphore.h>
#include <errno.h>
#include <math.h>
#include "property.h"

int main(int argc, char* argv[])
{

    if(argc != 2){
        printf("Error param!\n");
        return -1;
    }

    int isget = *argv[1];
    int value = 0;

    if(isget == 49){
        value = property_get_int32("vendor.mobydata", -1);
        printf("value = %d\n", value);
    }else{
        property_set("vendor.mobydata", "5");
    }

    return 0;
}