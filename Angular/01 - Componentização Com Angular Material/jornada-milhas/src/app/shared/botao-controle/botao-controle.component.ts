import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';

@Component({
  selector: 'app-botao-controle',
  standalone: true,
  imports: [CommonModule, MatButtonModule, MatIconModule],
  templateUrl: './botao-controle.component.html',
  styleUrl: './botao-controle.component.scss'
})
export class BotaoControleComponent {
  private _operacao: 'incrementar' | 'decrementar' = 'decrementar';
  private _src: string = '';
  private _alt: string = '';

  public get operacao(): 'incrementar' | 'decrementar' {
    return this._operacao;
  }
  @Input()
  public set operacao(value: 'incrementar' | 'decrementar') {
    this._operacao = value;
  }

  public get src(): string {
    return this._src;
  }
  @Input()
  public set src(value: string) {
    this._src = value;
  }

  public get alt(): string {
    return this._alt;
  }
  @Input()
  public set alt(value: string) {
    this._alt = value;
  }
}
