#include <cmath>
#include <iostream>
#include <memory.h>
#include <map>
#include <vector>
#include "common.h"
#include "scene.h"
#include "utility.inl"

CScene::CScene(int index)
    : _index(index),
      _max_column(pow(index, 2)),
      _cur_point({0, 0})
{
    init();
}

CScene::~CScene()
{
}

//print the game board
void CScene::show() const
{
    cls();

    printUnderline();

    for (int row = 0; row < _max_column; row++)
    {
        //what is auto??
        auto block = _row_block[row];
        block.print();
        printUnderline(row);
    }
}

void CScene::printUnderline(int line_no) const
{
    std::string underline;

    for (int column = 0; column < 9; column++)
    {
        if (_cur_point.y == line_no && _cur_point.x == column)
            underline += "--^-";
        else
            underline += "----";
    }
    underline += '-';

    //c_str()?
    std::cout << underline.c_str() << std::endl;
}

//initialize the state of every blocks
void CScene::init()
{
    //what is that for????
    memset(_map, UNSELECTED, sizeof _map);

    //colomn_block 所有列
    for (int column = 0; column < _max_column; column++)
    {
        CBlock column_block;

        for (int row = 0; row < _max_column; row++)
        {
            column_block.push_back(_map + row * 9 + column);
        }
        _column_block[column] = column_block;
    }

    //colomn_block 所有行
    for (int row = 0; row < _max_column; row++)
    {
        CBlock row_block;

        for (int column = 0; column < _max_column; column++)
        {
            row_block.push_back(_map + row * 9 + column);
        }
        _row_block[row] = row_block;
    }

    //xy_block所有九宫格, [行][列]
    for (int block_index = 0; block_index < _max_column; block_index++)
    {
        CBlock xy_block;

        //what is that?
        int xy_begin = block_index / 3 * 27 + block_index % 3 * 3;
        xy_block.push_back(_map + xy_begin);
        xy_block.push_back(_map + xy_begin + 1);
        xy_block.push_back(_map + xy_begin + 2);
        xy_block.push_back(_map + xy_begin + 9);
        xy_block.push_back(_map + xy_begin + 10);
        xy_block.push_back(_map + xy_begin + 11);
        xy_block.push_back(_map + xy_begin + 18);
        xy_block.push_back(_map + xy_begin + 19);
        xy_block.push_back(_map + xy_begin + 20);
        _xy_block[block_index / 3][block_index % 3] = xy_block;
    }

    return;
}

bool CScene::setCurValue(const int nCurValue, int &nLastValue)
{
    auto point = _map[_cur_point.x + _cur_point.y * 9];
    if (ERASED == point.state)
    {
        nLastValue = point.value;
        setValue(nCurValue);
        return true;
    }
    else
    {
        return false;
    }
}