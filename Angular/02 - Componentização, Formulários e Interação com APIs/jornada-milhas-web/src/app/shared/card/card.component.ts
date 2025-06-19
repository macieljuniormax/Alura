import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-card',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './card.component.html',
  styleUrl: './card.component.scss'
})
export class CardComponent {
  private _variant: 'primary' | 'secondary' = 'primary';

  public get variant(): 'primary' | 'secondary' {
    return this._variant;
  }
  @Input()
  public set variant(value: 'primary' | 'secondary') {
    this._variant = value;
  }
}
