import { Component } from './component';

export class Menu {

    id: number;
    name: String;
    Components: Component[] = [];

    constructor(id: number, name: String) {
        this.id = id;
        this.name = name;
    }
}
