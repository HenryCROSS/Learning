#ifndef _SUDOKU_COMMAND_H_
#define _SUDOKU_COMMAND_H_

#include <memory>
#include "common.h"

//why? there is some connection from scene.h
class CScene;
class CCommand
{
public:
    CCommand(CScene *pOwner);
    CCommand(const CCommand &);//why?
    ~CCommand();

    bool execute(int nInputValue);
    void undo();

private:
    CScene *_pOwner;
    point_t _stPoint;
    int _nPreValue;
    int _nCurValue;
};

#endif