#ifndef CLUSTERPCL_H
#define CLUSTERPCL_H

#include <vector>

#include <ClusterPclConfig.h>

using namespace path_planner;

#include <pcl/features/normal_3d.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/search/kdtree.h>
#include <pcl/segmentation/conditional_euclidean_clustering.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/filters/voxel_grid.h>

#include <Eigen/Dense>

#include "KdTreeFLANN.h"


using namespace std;

template<typename PointT>
class ClusterPcl
{
    static const float kFilterWallRadiusMin; 
    static const int kFilterWallRadiusMinNumNeighbors;
    
    static const float kAngleGroundMax;
    static const float kAngleWallMin;
    static const float kAngleWallMax;
    static const float kAngleRampStairsMin;
    static const float kAngleRampStairsMax;

public:
    typedef pcl::PointXYZRGBNormal PointOut;
    typedef pcl::PointCloud<PointOut> PointCloud;

    typedef pp::KdTreeFLANN<PointOut> KdTreeIn;

    ClusterPcl();
    ~ClusterPcl();

    void setInputPcl(const PointCloud& input_pcl);
    void setKdtree(const KdTreeIn& input_kdtree);
    int clustering(PointCloud& noWall, PointCloud& borders, PointCloud& segmented, PointCloud& wall);
    void getClusterInfo(std::vector<int>& cluster_info);

    inline void setConfig(ClusterPclConfig& new_config)
    {
        config_ = new_config;
        normal_clustering_thres_ = new_config.normal_clustering_thres;
    }

    inline ClusterPclConfig getConfig()
    {
        return config_;
    }


private:
    ClusterPclConfig config_;

    // this param needs to be static
    static double normal_clustering_thres_;

    // Input point cloud
    PointCloud pcl_in_;

    // Point cloud with normals
    PointCloud pcl_normal_;

    // Kdtree of the input point cloud
    KdTreeIn kdtree_input_pcl_;

    // Point cloud without wall
    PointCloud pcl_no_wall_;

    // Point cloud wall
    PointCloud pcl_wall_;

    // Index of point filtered out in noWall
    std::vector<int> point_idx_filter_out_;

    // cluster is an array of indices-arrays, indexing points of the input point cloud and own cluster
    pcl::IndicesClusters clusters_;

    std::vector<int> clusters_info_;

private:

    bool inFilteredList(int p);

    //void computeNormals();

    void filterWall();

    void elaborateCluster();

    void clusterPcl();

    bool enforceSimilarity(const PointOut& point_a, const PointOut& point_b, float squared_distance);

};

#endif
