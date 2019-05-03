/********************************************************************************
** Form generated from reading UI file 'PriorityDialog.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PRIORITYDIALOG_H
#define UI_PRIORITYDIALOG_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QSlider>

QT_BEGIN_NAMESPACE

class Ui_PriorityDialog
{
public:
    QHBoxLayout *horizontalLayout;
    QSlider *horizontalSlider;
    QDoubleSpinBox *doubleSpinBox;

    void setupUi(QDialog *PriorityDialog)
    {
        if (PriorityDialog->objectName().isEmpty())
            PriorityDialog->setObjectName(QString::fromUtf8("PriorityDialog"));
        PriorityDialog->resize(222, 47);
        horizontalLayout = new QHBoxLayout(PriorityDialog);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalSlider = new QSlider(PriorityDialog);
        horizontalSlider->setObjectName(QString::fromUtf8("horizontalSlider"));
        horizontalSlider->setMaximum(10);
        horizontalSlider->setSingleStep(1);
        horizontalSlider->setOrientation(Qt::Horizontal);

        horizontalLayout->addWidget(horizontalSlider);

        doubleSpinBox = new QDoubleSpinBox(PriorityDialog);
        doubleSpinBox->setObjectName(QString::fromUtf8("doubleSpinBox"));
        doubleSpinBox->setDecimals(1);
        doubleSpinBox->setMaximum(10);

        horizontalLayout->addWidget(doubleSpinBox);


        retranslateUi(PriorityDialog);

        QMetaObject::connectSlotsByName(PriorityDialog);
    } // setupUi

    void retranslateUi(QDialog *PriorityDialog)
    {
        PriorityDialog->setWindowTitle(QApplication::translate("PriorityDialog", "Priority", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class PriorityDialog: public Ui_PriorityDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PRIORITYDIALOG_H
