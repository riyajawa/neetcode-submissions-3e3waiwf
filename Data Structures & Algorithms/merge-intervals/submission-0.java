class Solution {
    public int[][] merge(int[][] intervals) {
        if(intervals.length == 0) return new int[0][0];

        Arrays.sort(intervals, (a,b)-> a[0]-b[0]);

        List<int[]> res = new ArrayList<>();
        int[] curr = intervals[0]; //[1,3]

        for(int i=1;i<intervals.length;i++){
            int[] next = intervals[i]; //[1,5]

            //overlap
            if(next[0] <=curr[1]){ // 1 <=3
                curr[1] = Math.max(curr[1], next[1]); // merge - 
            } else {
                res.add(curr);
                curr = next;
            }
        }    
        res.add(curr);
        return res.toArray(new int[res.size()][]);
    }
}
