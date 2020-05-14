#ifndef _SUDOKU_BLOCK_H_
#define _SUDOKU_BLOCK_H_

#include "common.h"//maybe?

//数独行政区域类
class CBlock
{
    static const int MAX_COUNT = 9;

public:
    CBlock();
    //whether current block is valid
    bool isValid() const;
    //check current 9 block is full
    bool isFull() const;
    void print() const;
    //not sure the feature
    void push_back(point_value_t *point);

private:
    //to count the number of block
    int _count;
    //store the state of each block
    point_value_t *_number[MAX_COUNT];
};

#endif