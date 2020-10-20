#ifndef CHARACTER_H
#define CHARACTER_H

#include <QObject>
#include <QDebug>
#include <QVariant>

class Character : public QObject
{
    Q_OBJECT
public:
    explicit Character(QObject *parent = nullptr);

    int getHp();
    void setHp(QVariant value);

signals:

};

#endif // CHARACTER_H
