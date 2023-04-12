#include "downloader.h"

Downloader::Downloader(QObject *parent) : QObject(parent)
{

}

void Downloader::fileDownload(QString url)
{
    qDebug() << url;
}
