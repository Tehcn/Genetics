import { Organism, ISexual, ICarnivore } from '../organism';
import { Pos } from '../pos';
import { DNA, Genotype } from '../dna';
import { Trait } from '../trait';
import { Grass } from './grass';
import { Deer } from './deer';

class Wolf extends Organism implements ICarnivore, ISexual {
    public pos: Pos;
    public dna: DNA;
    public hp: number;
    public name: string;
    public age: number;
    public genotype: Genotype;
    public mateAge: number;
    public mateTime: number;
    public eatChance: number;
    public gender: string;
    public parents: Wolf[] | null;

    public static all: Wolf[] = [];

    // -d = dominant trait, -r = recessive trait
    public static traits: Trait[] = [
        { 
            name: 'color',
            id: 'a',
            phenotypes: ['tall-d', 'short-r']
        },
        {
            name: 'gender',
            id: 'gender',
            phenotypes: ['female', 'male']
        }
    ];

    constructor(parent: Wolf[] | null) {
        super();
        this.pos = new Pos(1000, 1000);
        this.name = 'wolf';
        this.hp = 100;
        this.age = -1;
        this.parents = parent;
        this.mateAge = 2;
        this.mateTime = 0;
        this.eatChance = 0.5;
        
        if(this.parents == null || this.parents.length == 0) {
            this.dna = DNA.generate([], Wolf.traits);
        } else {
            this.dna = DNA.generate([this.parents[0].dna.data, this.parents[1].dna.data], Wolf.traits);
        }
        this.genotype = this.dna.data;
        this.gender = DNA.getPhenotype(this.dna, Wolf.traits[1]);
    }

    public eat(deer: Deer): boolean {
        let willEat = Math.random();
        if(willEat < this.eatChance) {
            this.hp += 2;
            deer.die();
            return true;
        } else {
            this.hp -= 1;
            return false
        }
        
    }

    public reproduce(other: Wolf): Wolf | null {
        // not born yet
        if(this.age == -1) return null;
        this.hp -= 1;
        return new Wolf([this, other]);
    }

    public die() {
        // not born yet
        if(this.age == -1) return;
        // console.log('Wolf died');
        
        this.hp = 0;
    }
}

export { Wolf };