/****************************************************************************
** Meta object code from reading C++ file 'AdvancedWidgetUI.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tradr-loc-map-nav/path_planner_rviz_wp_plugin/include/AdvancedWidgetUI.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AdvancedWidgetUI.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_path_planner_rviz_wp_plugin__AdvancedWidgetUI[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      51,   47,   46,   46, 0x0a,
      65,   46,   46,   46, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_path_planner_rviz_wp_plugin__AdvancedWidgetUI[] = {
    "path_planner_rviz_wp_plugin::AdvancedWidgetUI\0"
    "\0val\0SetPlay(bool)\0OpenNavigationDialog()\0"
};

void path_planner_rviz_wp_plugin::AdvancedWidgetUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        AdvancedWidgetUI *_t = static_cast<AdvancedWidgetUI *>(_o);
        switch (_id) {
        case 0: _t->SetPlay((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->OpenNavigationDialog(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData path_planner_rviz_wp_plugin::AdvancedWidgetUI::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject path_planner_rviz_wp_plugin::AdvancedWidgetUI::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_path_planner_rviz_wp_plugin__AdvancedWidgetUI,
      qt_meta_data_path_planner_rviz_wp_plugin__AdvancedWidgetUI, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &path_planner_rviz_wp_plugin::AdvancedWidgetUI::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *path_planner_rviz_wp_plugin::AdvancedWidgetUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *path_planner_rviz_wp_plugin::AdvancedWidgetUI::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_path_planner_rviz_wp_plugin__AdvancedWidgetUI))
        return static_cast<void*>(const_cast< AdvancedWidgetUI*>(this));
    return QWidget::qt_metacast(_clname);
}

int path_planner_rviz_wp_plugin::AdvancedWidgetUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
