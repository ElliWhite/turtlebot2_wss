/****************************************************************************
** Meta object code from reading C++ file 'WaypointsTool.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tradr-loc-map-nav/path_planner_rviz_wp_plugin/include/WaypointsTool.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'WaypointsTool.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_path_planner_rviz_wp_plugin__WaypointsTool[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      44,   43,   43,   43, 0x0a,
      70,   65,   43,   43, 0x0a,
     106,  102,   43,   43, 0x0a,
     150,  135,   43,   43, 0x0a,
     209,  102,   43,   43, 0x0a,
     248,  102,   43,   43, 0x0a,
     267,   43,   43,   43, 0x0a,
     277,   43,   43,   43, 0x0a,
     287,  102,   43,   43, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsTool[] = {
    "path_planner_rviz_wp_plugin::WaypointsTool\0"
    "\0OpenAdvancedWidget()\0name\0"
    "OpenPriorityDialog(std::string)\0val\0"
    "priorityValueChanged(double)\0"
    "name,val,point\0"
    "setPriority(std::string,PriorityType,geometry_msgs::Point)\0"
    "SetClosestObstVelReductionEnable(bool)\0"
    "SetRssEnable(bool)\0RssLoad()\0RssSave()\0"
    "SetMinRssValueEnable(int)\0"
};

void path_planner_rviz_wp_plugin::WaypointsTool::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        WaypointsTool *_t = static_cast<WaypointsTool *>(_o);
        switch (_id) {
        case 0: _t->OpenAdvancedWidget(); break;
        case 1: _t->OpenPriorityDialog((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 2: _t->priorityValueChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->setPriority((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const PriorityType(*)>(_a[2])),(*reinterpret_cast< const geometry_msgs::Point(*)>(_a[3]))); break;
        case 4: _t->SetClosestObstVelReductionEnable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->SetRssEnable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->RssLoad(); break;
        case 7: _t->RssSave(); break;
        case 8: _t->SetMinRssValueEnable((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData path_planner_rviz_wp_plugin::WaypointsTool::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject path_planner_rviz_wp_plugin::WaypointsTool::staticMetaObject = {
    { &rviz::Tool::staticMetaObject, qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsTool,
      qt_meta_data_path_planner_rviz_wp_plugin__WaypointsTool, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &path_planner_rviz_wp_plugin::WaypointsTool::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *path_planner_rviz_wp_plugin::WaypointsTool::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *path_planner_rviz_wp_plugin::WaypointsTool::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_path_planner_rviz_wp_plugin__WaypointsTool))
        return static_cast<void*>(const_cast< WaypointsTool*>(this));
    typedef rviz::Tool QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int path_planner_rviz_wp_plugin::WaypointsTool::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rviz::Tool QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
