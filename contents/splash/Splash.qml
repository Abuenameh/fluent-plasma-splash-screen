/*
 *   Copyright 2014 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.1


Image {
    id: root
    source: "images/background.png"

    Image {
        id: logo
        source: "images/kde.svg"
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height / 3
        width: 0.3 * root.height
        height: 0.3 * root.height
        fillMode: Image.Stretch
    }
    Image {
        property int current:0
        id: spinner
        source: "images/spin"+current+".png"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 0.65 * root.height
        width: 0.03 * root.height
        height: 0.03 * root.height
        fillMode: Image.Stretch
        NumberAnimation on current {
            from: 0
            to: 11
            duration: 2000
            loops: Animation.Infinite
        }
    }
}
