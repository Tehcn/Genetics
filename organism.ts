import { Pos } from './pos';
import { DNA } from './dna';
import { char } from './utils';
import { Trait } from './trait';

// basic class properties and methods shared by all organisms
abstract class Organism {
    public abstract pos: Pos;
    public abstract dna: DNA;
    public abstract name: string;
    public abstract hp: number;
    public abstract age: number;
    public abstract genotype: char[][];

    public static traits: Trait[];

    constructor() {}
    public abstract die(): void;
}

interface IPlant {
    photosynthesize(): void;
}

interface ICarnivore {
    eatChance: number;
    eat(other: Organism): boolean; // somtimes is not able to eat
}


interface IHerbivore {
    eat(plant: IPlant): void; // always able to eat
}

interface IAsexual {
    parent: Organism | null;
    reproduce(): Organism | null;
}

interface ISexual {
    mateAge: number;
    mateTime: number;
    gender: string;
    parents: Organism[] | null;
    reproduce(other: Organism): Organism | null;
}


export { Organism, IPlant, ICarnivore, IHerbivore, IAsexual, ISexual };