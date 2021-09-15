/** @noSelfInFile */
declare type BasicListMember<V extends string> = Record<V, number>;

/** This module assumes lower priority number is later in the list */
export declare const binarySearch: {
    /** Finds the first occurence of val
     * @param list A sorted list
     * @param index Your indice for the number
     * @param val The number to be found
     * @returns The position of the member that contains the number 
     */
    basic: <V extends string>(list: BasicListMember<V>[], index: V, val: number) => number | false;
    /** Finds where to insert this value
     * @param list A sorted list
     * @param index Your indice for priority
     * @param val The priority of the new member to be inserted
     * @returns The position of the new member 
     */
    findInsert: <V_1 extends string>(list: BasicListMember<V_1>[], index: V_1, val: number) => number | false;
};
export {};
