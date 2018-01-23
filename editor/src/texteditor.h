#ifndef TEXTEEDITOR_H
#define TEXTEEDITOR_H

#include "highlighter.h"
#include <QPlainTextEdit>
#include <QPaintEvent>

class TextEditor : public QPlainTextEdit
{
    Q_OBJECT
    
public:
    TextEditor(QPlainTextEdit *parent = 0);
    
    void lineNumberAreaPaintEvent(QPaintEvent *event);
    
    void nextLine();
    void prevLine();
    
    QWidget *lineNumberArea;
    
public slots:
    void handleUpdateRequest(const QRect &rect, int dy);
    void updateLineNumber();
    void highlightCurrentLine();
    
private:
    int lineNumberPaddingX = 5;
    int lineNumberOffset = 2;
    Highlighter *highlighter;
};

#endif
