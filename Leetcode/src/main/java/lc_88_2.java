/**
 *  Sense: merge sort, array init, array copy
 *
 */

public class lc_88_2 {


    public static void main(String[] args) {
        lc_88_2 obj = new lc_88_2();

        int[] nums1 = new int[]{1,2,3,0,0,0}; int[] nums2=new int[] {2,5,6}; int m=3; int n=3;

        obj.merge(nums1,m,nums2,n);
        System.out.println(nums1);
    }

    public void merge(int[] nums1, int m, int[] nums2, int n) {
        int i=0;
        int j=0;
        int k=0;
        int[] aux = new int[m+n];
        while(i<m && j<n){
            if(nums1[i]<nums2[j]){
                aux[k++]=nums1[i]; i++;
            } else{
                aux[k++]=nums2[j]; j++;
            }
        }
        if(i>=m){
            while(j<n){
                aux[k++]=nums2[j]; j++;
            }
        } else {
            while(i<m){
                aux[k++]=nums1[i]; i++;
            }
        }

        for(i=0;i<aux.length;i++){
            nums1[i]=aux[i];
        }
    }
}
