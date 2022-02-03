import { Organism, IPlant, IHerbivore, ICarnivore, ISexual, IAsexual } from '../organism';
import { Pos } from '../pos';
import { DNA, Genotype } from '../dna';
import { Trait } from '../trait';

class Grass extends Organism implements IPlant, IAsexual {
    public pos: Pos;
    public dna: DNA;
    public hp: number;
    public name: string;
    public age: number;
    public genotype: Genotype;
    public parent: Grass | null;

    public static all: Grass[] = [];

    // -d = dominant trait, -r = recessive trait
    public static traits: Trait[] = [
        { 
            name: 'height',
            id: 'a',
            phenotypes: ['tall-d', 'short-r']
        },
        {
            name: 'color',
            id: 'b',
            phenotypes: ['green-d', 'blue-r']
        }
    ];

    constructor(parent: Grass | null) {
        super();
        this.pos = new Pos(Math.floor(Math.random() * 1000) * (Math.random() > 0.5 ? -1 : 1), Math.floor(Math.random() * 1000) * (Math.random() > 0.5 ? -1 : 1));
        this.name = 'grass';
        this.hp = 100;
        this.age = -1;
        this.parent = parent;
        
        if(this.parent == null) {
            this.dna = DNA.generate([], Grass.traits);
        } else {
            this.dna = DNA.generate([parent!.dna.data], Grass.traits);
        }
        this.genotype = this.dna.data;

    }

    public photosynthesize() {
        this.hp += 2;
        // console.log('photosynthesis');
    }

    public reproduce(): Grass | null {
        // not born yet
        if(this.age == -1) return null;
        this.hp -= 1;
        return new Grass(this);
    }

    public die() {
        // not born yet
        if(this.age == -1) return;
        // console.log('grass died');

        this.hp = 0;
    }
}

export { Grass };