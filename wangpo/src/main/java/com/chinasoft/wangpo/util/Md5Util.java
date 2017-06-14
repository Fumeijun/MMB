package com.chinasoft.wangpo.util;

/**
 * @author Makise
 *         date 2017-06-14 11:52
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 * MD5加密工具类
 *      @author Makise
 */
public class Md5Util {

    /**
     * md5加密方法
     * @param password 没有加密之前的字符串
     * @return 经过md5加密之后的16进制的32位字符串
     */
    public static String md5(String password){
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            //加密
            byte[] byteArray = md.digest(password.getBytes());

            StringBuffer sb = new StringBuffer();

            for(byte b:byteArray){
                //System.out.print(b+" ");
                sb.append(byteToHexString(b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据字节数转换成一个对应的两位的十六进制的字符串
     * @param
     * @return
     */
    private static String byteToHexString(byte b){
        /**
         * byte: 无符号 （正数）  取值范围：0-255
         *       有符号（有负数） 取值范围： -128-127
         */
        //byte -> 16进制
        //如果是负数
        int num = 0;
        if(b<0){
            num=256+b;
        }else{
            num=b;
        }

        //求商，除数第一位
        int first = num/16;

        //求模，余数第二位
        int second = num%16;

        return hexs[first]+hexs[second];
    }

    private static String[] hexs = {"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"};

    // /**
    //  * 测试
    //  * @param args
    //  */
    // public static void main(String[] args) {
    //   String srt="wawawa123";
    //   String md5 = md5(srt);
    //   System.out.println(md5);
    //
    // }

}
