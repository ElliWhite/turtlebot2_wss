/********************************************************************************
** Form generated from reading UI file 'AdvancedWidget.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADVANCEDWIDGET_H
#define UI_ADVANCEDWIDGET_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_AdvancedWidget
{
public:
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_3;
    QVBoxLayout *playVerticalLayout;
    QLabel *playPayseLabel;
    QPushButton *playButton;
    QSpacerItem *verticalSpacer;
    QSpacerItem *horizontalSpacer_2;
    QVBoxLayout *verticalLayout;
    QVBoxLayout *settingsVerticalLayout;
    QLabel *settingsLabel;
    QPushButton *navigationPushButton;
    QSpacerItem *verticalSpacer_2;
    QSpacerItem *horizontalSpacer;

    void setupUi(QWidget *AdvancedWidget)
    {
        if (AdvancedWidget->objectName().isEmpty())
            AdvancedWidget->setObjectName(QString::fromUtf8("AdvancedWidget"));
        AdvancedWidget->resize(238, 91);
        horizontalLayout = new QHBoxLayout(AdvancedWidget);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        playVerticalLayout = new QVBoxLayout();
        playVerticalLayout->setObjectName(QString::fromUtf8("playVerticalLayout"));
        playPayseLabel = new QLabel(AdvancedWidget);
        playPayseLabel->setObjectName(QString::fromUtf8("playPayseLabel"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        playPayseLabel->setFont(font);

        playVerticalLayout->addWidget(playPayseLabel);

        playButton = new QPushButton(AdvancedWidget);
        playButton->setObjectName(QString::fromUtf8("playButton"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(playButton->sizePolicy().hasHeightForWidth());
        playButton->setSizePolicy(sizePolicy);
        playButton->setMinimumSize(QSize(40, 40));
        playButton->setMaximumSize(QSize(40, 40));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/play.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon.addFile(QString::fromUtf8(":/icons/pause.png"), QSize(), QIcon::Normal, QIcon::On);
        icon.addFile(QString::fromUtf8(":/icons/pause.png"), QSize(), QIcon::Disabled, QIcon::Off);
        playButton->setIcon(icon);
        playButton->setIconSize(QSize(35, 35));
        playButton->setCheckable(true);
        playButton->setFlat(false);

        playVerticalLayout->addWidget(playButton);


        verticalLayout_3->addLayout(playVerticalLayout);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer);


        horizontalLayout->addLayout(verticalLayout_3);

        horizontalSpacer_2 = new QSpacerItem(13, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        settingsVerticalLayout = new QVBoxLayout();
        settingsVerticalLayout->setObjectName(QString::fromUtf8("settingsVerticalLayout"));
        settingsLabel = new QLabel(AdvancedWidget);
        settingsLabel->setObjectName(QString::fromUtf8("settingsLabel"));
        settingsLabel->setFont(font);

        settingsVerticalLayout->addWidget(settingsLabel);

        navigationPushButton = new QPushButton(AdvancedWidget);
        navigationPushButton->setObjectName(QString::fromUtf8("navigationPushButton"));
        sizePolicy.setHeightForWidth(navigationPushButton->sizePolicy().hasHeightForWidth());
        navigationPushButton->setSizePolicy(sizePolicy);
        navigationPushButton->setMinimumSize(QSize(100, 40));
        navigationPushButton->setMaximumSize(QSize(100, 40));

        settingsVerticalLayout->addWidget(navigationPushButton);


        verticalLayout->addLayout(settingsVerticalLayout);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);


        horizontalLayout->addLayout(verticalLayout);

        horizontalSpacer = new QSpacerItem(0, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);


        retranslateUi(AdvancedWidget);

        QMetaObject::connectSlotsByName(AdvancedWidget);
    } // setupUi

    void retranslateUi(QWidget *AdvancedWidget)
    {
        AdvancedWidget->setWindowTitle(QApplication::translate("AdvancedWidget", "Advanced Controls", 0, QApplication::UnicodeUTF8));
        playPayseLabel->setText(QApplication::translate("AdvancedWidget", "Play/Pause", 0, QApplication::UnicodeUTF8));
        playButton->setText(QString());
        settingsLabel->setText(QApplication::translate("AdvancedWidget", "Settings", 0, QApplication::UnicodeUTF8));
        navigationPushButton->setText(QApplication::translate("AdvancedWidget", "Navigation", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class AdvancedWidget: public Ui_AdvancedWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADVANCEDWIDGET_H
