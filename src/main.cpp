#include <iostream>
#include <fstream>
#include "tokens.h"

extern int yyparse();
extern FILE *yyin;
extern int yydebug; // Enable debugging

int main(int argc, char *argv[])
{
    yydebug = 1; // Enable debug output

    if (argc < 2)
    {
        std::cerr << "Usage: " << argv[0] << " <file.vbs>" << std::endl;
        return 1;
    }

    yyin = fopen(argv[1], "r");
    if (!yyin)
    {
        std::cerr << "Error opening file: " << argv[1] << std::endl;
        return 1;
    }

    yyparse();
    fclose(yyin);
    return 0;
}
