package com.haibo.yan.algorithm.linkedlist;

import java.util.Arrays;

public class ListNode<T> {
    public T value;

    public ListNode<T> next;

    public ListNode(T value, ListNode<T> next) {
        this.value = value;
        this.next = next;
    }

    public ListNode(T value) {
        this(value, null);
    }

    public ListNode append(int value) {
        ListNode listNode = new ListNode(value);
        this.next = listNode;
        return listNode;
    }

    public static ListNode<Integer> deserialize(String string) {
        String[] values = string.split("#");
        if (values.length == 0) {
            return null;
        } else {
            ListNode<Integer> head = new ListNode(Integer.parseInt(values[0]));

            ListNode<Integer> current = head;

            for (String value: Arrays.copyOfRange(values, 1, values.length)) {
                ListNode<Integer> newListNode = new ListNode(Integer.parseInt(value));
                current.next = newListNode;
                current = newListNode;
            }

            return head;
        }
    }
}
