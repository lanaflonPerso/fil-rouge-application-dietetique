import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlimentAddComponent } from './aliment-add.component';

describe('AlimentAddComponent', () => {
  let component: AlimentAddComponent;
  let fixture: ComponentFixture<AlimentAddComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlimentAddComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlimentAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
