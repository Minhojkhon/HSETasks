#include <stddef.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int invoke(int16_t *arr, int size, int pivot);

#define sz 12

int16_t arr[sz] = {
};
int16_t old[sz] = {
};

int comp(const int16_t* x, const int16_t* y) {
    if (*x == *y) {
        return 0;
    }
    if (*x > *y) {
        return 1;
    }
    return -1;
}

void random_permutation() {
    for (int i = 0; i < sz; ++i) {
        arr[i] = rand() % (INT16_MAX - INT16_MIN + 1) + INT16_MIN;
        old[i] = arr[i];
    }
}

int main() {
    for (int i = 0; i < 1000; ++i) {
        random_permutation();

        int t = arr[rand() % sz];
        int ind = invoke(arr, sz, t);
        
        if (ind < 0 || ind >= sz) {
            printf("WRONG2\n");
            printf("%d %d\n", ind, t);
            for (int i = 0; i < sz; ++i) {
                printf("%d ", old[i]);
            }
            printf("\n");
            for (int i = 0; i < sz; ++i) {
                printf("%d ", arr[i]);
            }
            printf("\n");
            return 0;
        }

        for (int i = 0; i < ind; ++i) {
            if (arr[i] > t) {
                printf("WRONG2\n");
                printf("%d %d\n", ind, t);
                for (int i = 0; i < sz; ++i) {
                    printf("%d ", old[i]);
                }
                printf("\n");
                for (int i = 0; i < sz; ++i) {
                    printf("%d ", arr[i]);
                }
                printf("\n");
                return 0;
            }
        }
        
        for (int i = ind; i < sz; ++i) {
            if (arr[i] < t) {
                printf("WRONG2\n");
                printf("%d %d\n", ind, t);
                for (int i = 0; i < sz; ++i) {
                    printf("%d ", old[i]);
                }
                printf("\n");
                for (int i = 0; i < sz; ++i) {
                    printf("%d ", arr[i]);
                }
                printf("\n");
                return 0;
            }
        }
        qsort(arr, sz, sizeof(int16_t), (int(*) (const void *, const void *))comp);
        qsort(old, sz, sizeof(int16_t), (int(*) (const void *, const void *))comp);
        for (int i = 0; i < sz; ++i) {
            if (arr[i] != old[i]) {
                printf("Holy shit!\n");
                return 0;
            }
        }
        printf("OK\n");
    }
    return 0;
}