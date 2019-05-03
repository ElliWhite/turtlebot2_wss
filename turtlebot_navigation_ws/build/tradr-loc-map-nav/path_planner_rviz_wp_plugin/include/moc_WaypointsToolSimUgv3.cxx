/****************************************************************************
** Meta object code from reading C++ file 'WaypointsToolSimUgv3.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tradr-loc-map-nav/path_planner_rviz_wp_plugin/include/WaypointsToolSimUgv3.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'WaypointsToolSimUgv3.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_path_planner_rviz_wp_plugin__WaypointsToolSimUgv3[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

static const char qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsToolSimUgv3[] = {
    "path_planner_rviz_wp_plugin::WaypointsToolSimUgv3\0"
};

void path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObjectExtraData path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::staticMetaObject = {
    { &WaypointsTool::staticMetaObject, qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsToolSimUgv3,
      qt_meta_data_path_planner_rviz_wp_plugin__WaypointsToolSimUgv3, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsToolSimUgv3))
        return static_cast<void*>(const_cast< WaypointsToolSimUgv3*>(this));
    return WaypointsTool::qt_metacast(_clname);
}

int path_planner_rviz_wp_plugin::WaypointsToolSimUgv3::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = WaypointsTool::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
QT_END_MOC_NAMESPACE
