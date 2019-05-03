/********************************************************************************
** Form generated from reading UI file 'NavigationDialog.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVIGATIONDIALOG_H
#define UI_NAVIGATIONDIALOG_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QGridLayout>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QRadioButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_NavigationDialog
{
public:
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QRadioButton *normalRadioButton;
    QRadioButton *stairsRadioButton;
    QVBoxLayout *verticalLayout_2;
    QLabel *normalRadiuslabel;
    QHBoxLayout *horizontalLayout;
    QSlider *radiusSlider;
    QDoubleSpinBox *radiusDoubleSpinBox;
    QVBoxLayout *verticalLayout_3;
    QLabel *label_2;
    QRadioButton *lpEnableRadioButton;
    QRadioButton *lpDisableRadioButton;
    QSpacerItem *horizontalSpacer;
    QVBoxLayout *verticalLayout_5;
    QLabel *label_3;
    QRadioButton *rssEnableRadioButton;
    QRadioButton *rssDisableRadioButton;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *rssSavePushButton;
    QPushButton *rssLoadPushButton;
    QVBoxLayout *verticalLayout_4;
    QLabel *normalRadiuslabel_2;
    QHBoxLayout *horizontalLayout_3;
    QSlider *minRssValueSlider;
    QDoubleSpinBox *minRssValueDoubleSpinBox;
    QSpacerItem *verticalSpacer;

    void setupUi(QDialog *NavigationDialog)
    {
        if (NavigationDialog->objectName().isEmpty())
            NavigationDialog->setObjectName(QString::fromUtf8("NavigationDialog"));
        NavigationDialog->resize(226, 420);
        gridLayout = new QGridLayout(NavigationDialog);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(NavigationDialog);
        label->setObjectName(QString::fromUtf8("label"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label->setFont(font);

        verticalLayout->addWidget(label);

        normalRadioButton = new QRadioButton(NavigationDialog);
        normalRadioButton->setObjectName(QString::fromUtf8("normalRadioButton"));

        verticalLayout->addWidget(normalRadioButton);

        stairsRadioButton = new QRadioButton(NavigationDialog);
        stairsRadioButton->setObjectName(QString::fromUtf8("stairsRadioButton"));

        verticalLayout->addWidget(stairsRadioButton);


        gridLayout->addLayout(verticalLayout, 0, 0, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        normalRadiuslabel = new QLabel(NavigationDialog);
        normalRadiuslabel->setObjectName(QString::fromUtf8("normalRadiuslabel"));
        normalRadiuslabel->setFont(font);

        verticalLayout_2->addWidget(normalRadiuslabel);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        radiusSlider = new QSlider(NavigationDialog);
        radiusSlider->setObjectName(QString::fromUtf8("radiusSlider"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(radiusSlider->sizePolicy().hasHeightForWidth());
        radiusSlider->setSizePolicy(sizePolicy);
        radiusSlider->setMinimumSize(QSize(130, 29));
        radiusSlider->setMaximumSize(QSize(130, 29));
        radiusSlider->setMinimum(0);
        radiusSlider->setMaximum(100);
        radiusSlider->setOrientation(Qt::Horizontal);

        horizontalLayout->addWidget(radiusSlider);

        radiusDoubleSpinBox = new QDoubleSpinBox(NavigationDialog);
        radiusDoubleSpinBox->setObjectName(QString::fromUtf8("radiusDoubleSpinBox"));
        radiusDoubleSpinBox->setDecimals(2);
        radiusDoubleSpinBox->setMinimum(0.1);
        radiusDoubleSpinBox->setMaximum(1);
        radiusDoubleSpinBox->setSingleStep(0.05);
        radiusDoubleSpinBox->setValue(0.2);

        horizontalLayout->addWidget(radiusDoubleSpinBox);


        verticalLayout_2->addLayout(horizontalLayout);


        gridLayout->addLayout(verticalLayout_2, 1, 0, 1, 1);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        label_2 = new QLabel(NavigationDialog);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setFont(font);

        verticalLayout_3->addWidget(label_2);

        lpEnableRadioButton = new QRadioButton(NavigationDialog);
        lpEnableRadioButton->setObjectName(QString::fromUtf8("lpEnableRadioButton"));

        verticalLayout_3->addWidget(lpEnableRadioButton);

        lpDisableRadioButton = new QRadioButton(NavigationDialog);
        lpDisableRadioButton->setObjectName(QString::fromUtf8("lpDisableRadioButton"));

        verticalLayout_3->addWidget(lpDisableRadioButton);


        gridLayout->addLayout(verticalLayout_3, 2, 0, 1, 1);

        horizontalSpacer = new QSpacerItem(0, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 2, 1, 1, 1);

        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        label_3 = new QLabel(NavigationDialog);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setFont(font);

        verticalLayout_5->addWidget(label_3);

        rssEnableRadioButton = new QRadioButton(NavigationDialog);
        rssEnableRadioButton->setObjectName(QString::fromUtf8("rssEnableRadioButton"));

        verticalLayout_5->addWidget(rssEnableRadioButton);

        rssDisableRadioButton = new QRadioButton(NavigationDialog);
        rssDisableRadioButton->setObjectName(QString::fromUtf8("rssDisableRadioButton"));

        verticalLayout_5->addWidget(rssDisableRadioButton);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        rssSavePushButton = new QPushButton(NavigationDialog);
        rssSavePushButton->setObjectName(QString::fromUtf8("rssSavePushButton"));

        horizontalLayout_2->addWidget(rssSavePushButton);

        rssLoadPushButton = new QPushButton(NavigationDialog);
        rssLoadPushButton->setObjectName(QString::fromUtf8("rssLoadPushButton"));

        horizontalLayout_2->addWidget(rssLoadPushButton);


        verticalLayout_5->addLayout(horizontalLayout_2);

        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        normalRadiuslabel_2 = new QLabel(NavigationDialog);
        normalRadiuslabel_2->setObjectName(QString::fromUtf8("normalRadiuslabel_2"));
        QFont font1;
        font1.setBold(false);
        font1.setWeight(50);
        normalRadiuslabel_2->setFont(font1);

        verticalLayout_4->addWidget(normalRadiuslabel_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        minRssValueSlider = new QSlider(NavigationDialog);
        minRssValueSlider->setObjectName(QString::fromUtf8("minRssValueSlider"));
        sizePolicy.setHeightForWidth(minRssValueSlider->sizePolicy().hasHeightForWidth());
        minRssValueSlider->setSizePolicy(sizePolicy);
        minRssValueSlider->setMinimumSize(QSize(130, 29));
        minRssValueSlider->setMaximumSize(QSize(130, 29));
        minRssValueSlider->setMinimum(0);
        minRssValueSlider->setMaximum(100);
        minRssValueSlider->setOrientation(Qt::Horizontal);

        horizontalLayout_3->addWidget(minRssValueSlider);

        minRssValueDoubleSpinBox = new QDoubleSpinBox(NavigationDialog);
        minRssValueDoubleSpinBox->setObjectName(QString::fromUtf8("minRssValueDoubleSpinBox"));
        minRssValueDoubleSpinBox->setDecimals(0);
        minRssValueDoubleSpinBox->setMinimum(-100);
        minRssValueDoubleSpinBox->setMaximum(0);
        minRssValueDoubleSpinBox->setSingleStep(1);
        minRssValueDoubleSpinBox->setValue(-80);

        horizontalLayout_3->addWidget(minRssValueDoubleSpinBox);


        verticalLayout_4->addLayout(horizontalLayout_3);


        verticalLayout_5->addLayout(verticalLayout_4);


        gridLayout->addLayout(verticalLayout_5, 3, 0, 1, 1);

        verticalSpacer = new QSpacerItem(197, 1, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer, 4, 0, 1, 2);

        normalRadiuslabel_2->raise();

        retranslateUi(NavigationDialog);

        QMetaObject::connectSlotsByName(NavigationDialog);
    } // setupUi

    void retranslateUi(QDialog *NavigationDialog)
    {
        NavigationDialog->setWindowTitle(QApplication::translate("NavigationDialog", "Navigation Dialog", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("NavigationDialog", "Navigation mode", 0, QApplication::UnicodeUTF8));
        normalRadioButton->setText(QApplication::translate("NavigationDialog", "normal", 0, QApplication::UnicodeUTF8));
        stairsRadioButton->setText(QApplication::translate("NavigationDialog", "stairs", 0, QApplication::UnicodeUTF8));
        normalRadiuslabel->setText(QApplication::translate("NavigationDialog", "Normal computation radius", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("NavigationDialog", "Laser proximity", 0, QApplication::UnicodeUTF8));
        lpEnableRadioButton->setText(QApplication::translate("NavigationDialog", "enabled", 0, QApplication::UnicodeUTF8));
        lpDisableRadioButton->setText(QApplication::translate("NavigationDialog", "disabled", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("NavigationDialog", "RSS map", 0, QApplication::UnicodeUTF8));
        rssEnableRadioButton->setText(QApplication::translate("NavigationDialog", "enabled", 0, QApplication::UnicodeUTF8));
        rssDisableRadioButton->setText(QApplication::translate("NavigationDialog", "disabled", 0, QApplication::UnicodeUTF8));
        rssSavePushButton->setText(QApplication::translate("NavigationDialog", "Save", 0, QApplication::UnicodeUTF8));
        rssLoadPushButton->setText(QApplication::translate("NavigationDialog", "Load", 0, QApplication::UnicodeUTF8));
        normalRadiuslabel_2->setText(QApplication::translate("NavigationDialog", "min RSS value", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class NavigationDialog: public Ui_NavigationDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVIGATIONDIALOG_H
