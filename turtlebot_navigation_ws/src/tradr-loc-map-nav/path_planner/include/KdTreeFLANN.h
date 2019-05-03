#ifndef KDTREE_FLANN_PP_H
#define KDTREE_FLANN_PP_H

#define PCL_NO_PRECOMPILE

#include <pcl/search/kdtree.h>
//#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/kdtree/impl/kdtree_flann.hpp>  // this solves a strange undefined reference which appear with optimizations 
// from http://www.pcl-users.org/Linking-problem-for-user-defined-point-type-td2414744.html

#include "kdtree/kdtree_flann_pp.h"  // these files comes from pcl commit bdb91a3 which fixes a double free problem in KdTreeFLANN after copy operation; 
// see here https://github.com/PointCloudLibrary/pcl/issues/335


/// < WE CANNOT USE c++11 with ros PCL see https://github.com/felixendres/rgbdslam_v2/issues/8
//#if __cplusplus > 199711L
//
//namespace pp
//{
//    template <typename PointT, typename Dist = ::flann::L2_Simple<float> >
//    //using KdTreeFLANN = pcl::KdTreeFLANN_PP<PointT,Dist>;
//    using KdTreeFLANN = pcl::KdTreeFLANN<PointT,Dist>; // for using the standard pcl::KdTreeFLANN  
//}
//
//#else

namespace pp
{
                   
//template <typename PointT, typename Dist = ::flann::L2_Simple<float> >
template <typename PointT, typename Dist = ::flann::L2_3D<float> >
class KdTreeFLANN : public pcl::KdTreeFLANN_PP<PointT, Dist>
//class KdTreeFLANN: public pcl::KdTreeFLANN<PointT,Dist>   // for using standard pcl::KdTreeFLANN
{
public:

    /** \brief Default Constructor for KdTreeFLANN.
     * \param[in] sorted set to true if the application that the tree will be used for requires sorted nearest neighbor indices (default). False otherwise. 
     *
     * By setting sorted to false, the \ref radiusSearch operations will be faster.
     */
    KdTreeFLANN(bool sorted = true) : pcl::KdTreeFLANN_PP<PointT, Dist>(sorted) {} 
    //KdTreeFLANN(bool sorted = true) : pcl::KdTreeFLANN<PointT, Dist>(sorted) {} 

    /** \brief Copy constructor
     * \param[in] tree the tree to copy into this
     */
    KdTreeFLANN(const KdTreeFLANN<PointT> &k) : pcl::KdTreeFLANN_PP<PointT, Dist>(k) {} 
    //KdTreeFLANN(const KdTreeFLANN<PointT> &k) : pcl::KdTreeFLANN<PointT, Dist>(k) {} 
};

}



#endif // KDTREE_FLANN_PP_H
