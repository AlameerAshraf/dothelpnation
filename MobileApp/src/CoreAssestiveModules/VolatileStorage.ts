export class VolatileStorage {
    static data;
    public static setData(userData): void { this.data = userData; };
    public static getData() { return this.data; };
}