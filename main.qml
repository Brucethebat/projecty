import QtQuick 2.12
import QtQuick.Window 2.12
import QtWebView 1.14
import QtQuick.Controls 2.12
import Downloader 1.0

ApplicationWindow {
    visible: true
    width: 400
    height: 750
    title: qsTr("Hello World")
    Download{
        id: download
    }

    visibility: Window.FullScreen

    WebView{
        anchors.fill: parent
        url: "https://yeketak.com.tm/"
        focus: true
        id: web
        anchors.bottomMargin: 50

        Keys.onBackPressed: {
            web.goBack()
        }

        onLoadingChanged: {
            web.runJavaScript(init(), function(res){console.log(res)})
            //web.runJavaScript("document.getElementById('__next').getAttribute('got')", function(res){console.log(res)})
        }

        function init(){
            var script ="
            var element = document.getElementsByClassName('flex-center z-10 relative rounded-full w-10 h-10 mr-2 dark:text-indigo-300 text-blue-400 cursor-pointer')
            for(var i=0;i<element.length;i++){
            element[i].addEventListener('click', function(){document.getElementById('__next').setAttribute('got', this.href)}, false);
"
            return script
        }
    }
}
