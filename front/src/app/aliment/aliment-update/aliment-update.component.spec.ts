import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlimentUpdateComponent } from './aliment-update.component';

describe('AlimentUpdateComponent', () => {
  let component: AlimentUpdateComponent;
  let fixture: ComponentFixture<AlimentUpdateComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlimentUpdateComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlimentUpdateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
