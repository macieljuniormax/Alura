import { Component, Input } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { Depoimento } from '../../../models/interfaces/depoimento.model';

@Component({
  selector: 'app-card-depoimento',
  standalone: true,
  imports: [MatCardModule],
  templateUrl: './card-depoimento.component.html',
  styleUrl: './card-depoimento.component.scss'
})

export class CardDepoimentoComponent {
  private _depoimento!: Depoimento;

  public get depoimento(): Depoimento {
    return this._depoimento;
  }
  @Input()
  public set depoimento(value: Depoimento) {
    this._depoimento = value;
  }
}
