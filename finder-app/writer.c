#include <stdio.h>
#include <syslog.h>

int main(int argc, char **argv)
{
    /* Setup openlog for logging messages */
    openlog("writerlog:", LOG_NDELAY, LOG_USER);

    /* Check if required arguments have been provided */
    if(argc != 3)
    {
        printf("Invalid arguments specified. Please specify arguments: \r\n");
        printf("1. Full path to a file (including filename)\r\n");
        printf("2. Text string to be written to the file\r\n");
        syslog(LOG_ERR, "Invalid arguments specified. Terminating application.\r\n");
        return 1;
    }

    /* Assign the arguments passed to variables */
    char *writefile = argv[1];
    char *writestr = argv[2];

    /* Open the file for writing */
    FILE *file = fopen(writefile, "w");

    /* Put the string into the file */
    fputs(writestr, file);

    /* Log the debug messages using syslog */
    syslog(LOG_DEBUG, "Writing %s to file %s\r\n", writestr, writefile);

    /* Close the file */
    fclose(file);

    return 0;
}