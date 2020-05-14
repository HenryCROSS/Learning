#ifndef _SUDOKU_COMMON_H_
#define _SUDOKU_COMMON_H_

//count the unselected blocks
static const unsigned int UNSELECTED = 0;

enum difficulty_e
{
    EASY = 1,
    NORMAL,
    HARD,
};

enum state_e
{
    INITIED = 0,
    ERASED,
};

typedef struct stPoint
{
    int x;
    int y;
} point_t; //defined variable

typedef struct stPointValue
{
    //the number in current block
    int value;
    //be selected or not
    int state;
} point_value_t;

class CPointSort
{
public:
    //why?
    bool operator()(const point_t &lhs, const point_t &rhs) const
    {
        if ((lhs.x == rhs.x) && (lhs.y == rhs.y))
            return false;
        else
            return true;
    }
};

#endif