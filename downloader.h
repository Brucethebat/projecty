#ifndef DOWNLOADER_H
#define DOWNLOADER_H

#include <QObject>
#include <QDesktopServices>
#include <QDebug>
#include <Qurl>
class Downloader : public QObject
{
    Q_OBJECT
public:
    explicit Downloader(QObject *parent = nullptr);
    Q_INVOKABLE void fileDownload(QString url);


signals:

};

#endif // DOWNLOADER_H
