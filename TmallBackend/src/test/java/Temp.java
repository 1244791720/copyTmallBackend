
public class Temp {
	private static void printAraay(int[] nums) {
		for (int i : nums) {
        	System.out.println(i);
        }
		System.out.println("----------------------");
	}
	
	public static double findMedianSortedArrays(int[] nums1, int[] nums2) {
        //���ص���λ��
        double zhong = 0;
        //�������鵽һ������
        int[] nums = new int[nums1.length+nums2.length];
        
        for (int i = 0; i < nums1.length; i++) {
             nums[i] = nums1[i];
        }
        printAraay(nums);
        
        for (int i = nums1.length; i < nums.length; i++) {
        		for(int j = 0; j < nums2.length; j++) {
        			nums[i] = nums2[j];
        		}
            }
         printAraay(nums);
        //��������
        for (int i = 0; i < nums.length - 1; i++) {
            if(nums[i+1] < nums[i]) {
                int temp = nums[i];
                nums[i] = nums[i+1];
                nums[i+1] = temp;
            }
        }   
        //������λ��
        //���Ϊ����
        if (nums.length%2 == 1) {
            int o = nums.length/2;
            zhong = nums[o];
            System.out.println("ji");
        }
        //ż��
        if (nums.length%2 == 0) {
            zhong = (nums[nums.length/2] + nums[nums.length/2+1])/2;
            System.out.println("ou");
        }
//        printAraay(nums);
        return zhong;
        
    }
	public static void main(String[] args) {
		int[] nums1 = {1,3};
		int[] nums2 = {2};
		double a =findMedianSortedArrays(nums1, nums2);
		System.out.println(a);
	}
	
}
