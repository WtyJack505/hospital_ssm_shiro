package com.hospital.leetCode.array;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description:
 * 寻找两个正序数组的中位数
 * 给定两个大小分别为 m 和 n 的正序（从小到大）数组 nums1 和 nums2。请你找出并返回这两个正序数组的 中位数 。
 * @date 2021/12/24 16:09
 */
public class FindMidInArray {

    /** 解题思路：1、两个数组先凑成一个数组，再将这个数组内的元素进行排序 最后找到该  中位数 **/
    public static double findMedianSortedArrays(int[] nums1, int[] nums2) {

        //int[] nums =  new int[nums1.length + nums2.length];
        List<Integer> nums = new ArrayList<>();
        for (int j : nums1) {
            nums.add(j);
        }
        for (int j : nums2) {
            nums.add(j);
        }
        List<Integer> list = nums.stream().sorted().collect(Collectors.toList());
        System.out.println(nums.stream().sorted().collect(Collectors.toList()));

        return 0.0;


    }

    public static void main(String[] args) {
        int[] nums1  = new int[]{1,2,3};
        int[] nums2  = new int[]{8,9,3};
        findMedianSortedArrays(nums1,nums2);

    }
}
