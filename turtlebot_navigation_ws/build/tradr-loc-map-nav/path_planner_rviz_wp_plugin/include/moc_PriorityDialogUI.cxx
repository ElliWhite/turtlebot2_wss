/****************************************************************************
** Meta object code from reading C++ file 'PriorityDialogUI.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tradr-loc-map-nav/path_planner_rviz_wp_plugin/include/PriorityDialogUI.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PriorityDialogUI.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_path_planner_rviz_wp_plugin__PriorityDialogUI[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      54,   46,   47,   46, 0x05,

 // slots: signature, parameters, type, tag, flags
      79,   75,   46,   46, 0x0a,
     119,  104,   46,   46, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_path_planner_rviz_wp_plugin__PriorityDialogUI[] = {
    "path_planner_rviz_wp_plugin::PriorityDialogUI\0"
    "\0double\0ValueChanged(double)\0val\0"
    "SetPriorityValue(double)\0x_in,y_in,z_in\0"
    "SetXYZ(double,double,double)\0"
};

void path_planner_rviz_wp_plugin::PriorityDialogUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PriorityDialogUI *_t = static_cast<PriorityDialogUI *>(_o);
        switch (_id) {
        case 0: { double _r = _t->ValueChanged((*reinterpret_cast< double(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< double*>(_a[0]) = _r; }  break;
        case 1: _t->SetPriorityValue((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 2: _t->SetXYZ((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData path_planner_rviz_wp_plugin::PriorityDialogUI::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject path_planner_rviz_wp_plugin::PriorityDialogUI::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_path_planner_rviz_wp_plugin__PriorityDialogUI,
      qt_meta_data_path_planner_rviz_wp_plugin__PriorityDialogUI, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &path_planner_rviz_wp_plugin::PriorityDialogUI::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *path_planner_rviz_wp_plugin::PriorityDialogUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *path_planner_rviz_wp_plugin::PriorityDialogUI::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_path_planner_rviz_wp_plugin__PriorityDialogUI))
        return static_cast<void*>(const_cast< PriorityDialogUI*>(this));
    return QDialog::qt_metacast(_clname);
}

int path_planner_rviz_wp_plugin::PriorityDialogUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
double path_planner_rviz_wp_plugin::PriorityDialogUI::ValueChanged(double _t1)
{
    double _t0;
    void *_a[] = { const_cast<void*>(reinterpret_cast<const void*>(&_t0)), const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
    return _t0;
}
QT_END_MOC_NAMESPACE
