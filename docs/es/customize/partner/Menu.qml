
import QtQuick 1.0
import com.mediphealth.qml.ui.themes.bariloche

MenuPage {

    style: Style.Turquoise

    ListModel {
        id: entertainmentModel
        ListElement { name: "phone"; module: "voip"; labels: { 
          "es": "teléfono", 
          "ca": "telèfon", 
          "va": "telèfon", 
          "gl": "teléfono", 
          "de": "telefon", 
          "fr": "téléphone" } }
        ListElement { name: "radio"; module: "radio" }
        ListElement { name: "football"; module: "tv"; module_parameter: "tv.football" }
        ListElement { name: "tv"; module: "tv"; module_parameter: "tv.tdt" }
        ListElement { name: "internet"; module: "inet" }
        ListElement { name: "vod"; module: "vod" }
    }

    ListModel {
        id: serviceModel
        ListElement { name: "services"; module: "svc" }
        ListElement { name: "card info"; widget: "showBalance" }
        ListElement { name: "terms of service"; widget: "showToS" }
        ListElement { name: "help desk"; module: "voip_sat" }
        ListElement { name: "languages"; module: "setup" }
    }

    Image {
        source: "http://www.mad.es/Graficos/sanidad/txtcab-CHGUV.gif"
        anchors: Style.corporateLogo.position
    }   
}
