/****************************************************************************
** Meta object code from reading C++ file 'NavigationDialogUI.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tradr-loc-map-nav/path_planner_rviz_wp_plugin/include/NavigationDialogUI.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'NavigationDialogUI.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_path_planner_rviz_wp_plugin__NavigationDialogUI[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      56,   48,   49,   48, 0x05,

 // slots: signature, parameters, type, tag, flags
      81,   77,   48,   48, 0x0a,
     110,   77,   48,   48, 0x0a,
     140,   48,   48,   48, 0x0a,
     169,   48,   48,   48, 0x0a,
     198,   48,   48,   48, 0x0a,
     233,   48,   48,   48, 0x0a,
     269,   48,   48,   48, 0x0a,
     284,   48,   48,   48, 0x0a,
     300,   48,   48,   48, 0x0a,
     310,   48,   48,   48, 0x0a,
     320,   77,   48,   48, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_path_planner_rviz_wp_plugin__NavigationDialogUI[] = {
    "path_planner_rviz_wp_plugin::NavigationDialogUI\0"
    "\0double\0ValueChanged(double)\0val\0"
    "SetNormalRadiusValue(double)\0"
    "SendNormalRadiusValue(double)\0"
    "SendNormalRadiusNormalMode()\0"
    "SendNormalRadiusStairsMode()\0"
    "SetClosestObstVelReductionEnable()\0"
    "SetClosestObstVelReductionDisable()\0"
    "SetRssEnable()\0SetRssDisable()\0RssLoad()\0"
    "RssSave()\0SetMinRssValueEnable(double)\0"
};

void path_planner_rviz_wp_plugin::NavigationDialogUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        NavigationDialogUI *_t = static_cast<NavigationDialogUI *>(_o);
        switch (_id) {
        case 0: { double _r = _t->ValueChanged((*reinterpret_cast< double(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< double*>(_a[0]) = _r; }  break;
        case 1: _t->SetNormalRadiusValue((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 2: _t->SendNormalRadiusValue((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->SendNormalRadiusNormalMode(); break;
        case 4: _t->SendNormalRadiusStairsMode(); break;
        case 5: _t->SetClosestObstVelReductionEnable(); break;
        case 6: _t->SetClosestObstVelReductionDisable(); break;
        case 7: _t->SetRssEnable(); break;
        case 8: _t->SetRssDisable(); break;
        case 9: _t->RssLoad(); break;
        case 10: _t->RssSave(); break;
        case 11: _t->SetMinRssValueEnable((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData path_planner_rviz_wp_plugin::NavigationDialogUI::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject path_planner_rviz_wp_plugin::NavigationDialogUI::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_path_planner_rviz_wp_plugin__NavigationDialogUI,
      qt_meta_data_path_planner_rviz_wp_plugin__NavigationDialogUI, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &path_planner_rviz_wp_plugin::NavigationDialogUI::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *path_planner_rviz_wp_plugin::NavigationDialogUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *path_planner_rviz_wp_plugin::NavigationDialogUI::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_path_planner_rviz_wp_plugin__NavigationDialogUI))
        return static_cast<void*>(const_cast< NavigationDialogUI*>(this));
    return QDialog::qt_metacast(_clname);
}

int path_planner_rviz_wp_plugin::NavigationDialogUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
double path_planner_rviz_wp_plugin::NavigationDialogUI::ValueChanged(double _t1)
{
    double _t0;
    void *_a[] = { const_cast<void*>(reinterpret_cast<const void*>(&_t0)), const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
    return _t0;
}
QT_END_MOC_NAMESPACE
