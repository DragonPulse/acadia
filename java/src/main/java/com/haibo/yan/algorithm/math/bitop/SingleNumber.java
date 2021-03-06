/*
 * Copyright (c) [2017] [Haibo(Tristan) Yan]
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.haibo.yan.algorithm.math.bitop;

/**
 * The problem:
 *
 * Given an array of integers, every element appears twice except for one. Find that single one.
 */
public class SingleNumber {
    public static int findInTwo(int[] array) {
        int single = 0;

        for (int v : array) {
            single ^= v;
        }

        return single;
    }


    public static int findInThree(int[] array) {
        int one = 0, two = 0, three = 0;

        for (int v : array) {
            two |= one & v;
            one ^= v;
            three = one & two;
            one &= ~three;
            two &= ~three;
        }

        return one;
    }

    public static int findInFour(int[] array) {
        int one = 0, two = 0, three = 0, four = 0;

        for (int v : array) {
            two |= one & v;
            one ^= v;
            three = one & two;
            four = three & ~(one);
            one &= ~four;
            two &= ~four;
            three &= ~four;
        }

        return one;
    }
}
