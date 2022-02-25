import { Organism, IHerbivore, ISexual } from '../organism';
import { Pos } from '../pos';
import { DNA, Genotype } from '../dna';
import { Trait } from '../trait';
import { Grass } from './grass';

class Deer extends Organism implements IHerbivore, ISexual {
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
    public parents: Deer[] | null;

    public static all: Deer[] = [];

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

    constructor(parent: Deer[] | null) {
        super();
        this.pos = new Pos(1000, 1000);
        this.name = 'deer';
        this.hp = 100;
        this.age = -1;
        this.parents = parent;
        this.mateAge = 2;
        this.mateTime = 0;
        this.eatChance = 0.7;
        
        if(this.parents == null || this.parents.length == 0) {
            this.dna = DNA.generate([], Deer.traits);
        } else {
            this.dna = DNA.generate([this.parents[0].dna.data, this.parents[1].dna.data], Deer.traits);
        }
        this.genotype = this.dna.data;
        this.gender = DNA.getPhenotype(this.dna, Deer.traits[1]);
    }

    public eat(grass: Grass) {
        let willEat = Math.random();
        if(willEat < this.eatChance) {
            this.hp += 25 / 2;
            grass.die();
            return true;
        } else {
            this.hp -= 50;
            return false
        }
    }

    public reproduce(other: Deer): Deer | null {
        // not born yet
        if(this.age == -1) return null;
        this.hp -= 1;
        return new Deer([this, other]);
    }

    public die() {
        // not born yet
        if(this.age == -1) return;
        // console.log('Deer died');
        
        this.hp = 0;
    }
}

export { Deer };