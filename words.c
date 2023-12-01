#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_WORD_LENGTH 50
#define MAX_WORDS 1000

int main() {
    char filename[MAX_WORD_LENGTH];
    printf("Enter file: ");
    scanf("%s", filename);

    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        fprintf(stderr, "Error opening file %s\n", filename);
        return 1;
    }

    char words[MAX_WORDS][MAX_WORD_LENGTH];
    int counts[MAX_WORDS] = {0}; 
    int uniqueWords = 0;

    while (fscanf(file, "%s", words[uniqueWords]) == 1) {
        int i;
        for (i = 0; i < uniqueWords; i++) {
            if (strcmp(words[uniqueWords], words[i]) == 0) {
                counts[i]++;
                break;
            }
        }
        if (i == uniqueWords) {
            counts[uniqueWords]++;
            uniqueWords++;
        }
    }

    fclose(file);

    int bigcount = 0;
    int bigwordIndex = 0;
    for (int i = 0; i < uniqueWords; i++) {
        if (counts[i] > bigcount) {
            bigcount = counts[i];
            bigwordIndex = i;
        }
    }

    printf("%s %d\n", words[bigwordIndex], bigcount);
    return 0;
}

