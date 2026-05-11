import { Component, OnInit, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClientModule, HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, HttpClientModule],
  templateUrl: './app.html',
  styleUrls: ['./app.css']
})
export class AppComponent implements OnInit {
  scenarios: any[] = [];
  dailyFacts: any[] = []; 
  viewMode: 'quiz' | 'learn' = 'quiz'; 
  
  // ADD THIS LINE: This tracks which fact is currently enlarged/opened
  selectedFact: any = null; 

  currentIndex = 0;
  score = 0;
  showFeedback = false;
  lastResult = '';

  constructor(private http: HttpClient, private cdr: ChangeDetectorRef) {}

  ngOnInit() {
    // Load Quiz Data
    this.http.get<any[]>('http://localhost:8000/api/quiz').subscribe({
      next: (data) => {
        this.scenarios = data;
        console.log('Quiz loaded:', data);
        this.cdr.detectChanges();
      }
    });

    // Load Facts Data
    this.http.get<any[]>('http://localhost:8000/api/facts').subscribe({
      next: (data) => {
        this.dailyFacts = data;
        this.cdr.detectChanges();
      }
    });
  }

  // Quiz logic
  checkAnswer(userThinksPhish: boolean) {
    const current = this.scenarios[this.currentIndex];
    if (userThinksPhish === current.is_phishing) {
      this.score++;
      this.lastResult = "Correct!";
    } else {
      this.lastResult = "Incorrect.";
    }
    this.showFeedback = true;
  }

  nextQuestion() {
    this.showFeedback = false;
    this.currentIndex++;
  }
}