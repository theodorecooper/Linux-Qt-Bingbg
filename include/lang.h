﻿/***************************************************************************
 * Author: Theodore Cooper                                                 *
 * License: GNU General Public License                                     *
 *                                                                         *
 * Bing-Backgrounds-Getter-v1.1.4                                          *
 *                                                                         *
 * Copyright (C) 2021 Theodore Cooper <ccooperr2005@gmail.com>             *
 *                                                                         *
 * This program is free software: you can redistribute it and/or modify    *
 * it under the terms of the GNU General Public License as published by    *
 * the Free Software Foundation, either version 3 of the License, or       *
 * (at your option) any later version.                                     *
 *                                                                         *
 * This program is distributed in the hope that it will be useful,         *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           *
 * GNU General Public License for more details.                            *
 *                                                                         *
 * You should have received a copy of the GNU General Public License       *
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.   *
 ***************************************************************************/

#ifndef LANG_H
#define LANG_H

#include <QDialog>
#include <QAbstractButton>
#include <QPushButton>
#include <QButtonGroup>
#include <QSettings>
#include <QCloseEvent>
#include <QMessageBox>

namespace Ui {
class LANG;
}

class LANG : public QDialog
{
    Q_OBJECT

public:
    explicit LANG(QWidget *parent = nullptr);
    ~LANG();

    void checkLang();

    void writeState();

    void readState();

private slots:
    void on_buttonBox_clicked(QAbstractButton *button);

private:
    Ui::LANG *ui;
    QButtonGroup *groupButton;
};

#endif // LANG_H
