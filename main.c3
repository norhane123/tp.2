#include <stdio.h>

int estSuiteCroissante(int suite[], int taille) {
    if (taille <= 1) {
        return 1;
    } else {
        if (suite[taille - 1] < suite[taille - 2]) {
            return 0;
        } else {
            return estSuiteCroissante(suite, taille - 1);
        }
    }
}

int main() {
    int suiteCroissante[] = {1, 2, 3, 4, 5};
    int taille = sizeof(suiteCroissante) / sizeof(suiteCroissante[0]);

    if (estSuiteCroissante(suiteCroissante, taille)) {
        printf("La suite est croissante.\n");
    } else {
        printf("La suite n'est pas croissante.\n");
    }

    return 0;
}
