#include <iostream>
#include <algorithm>

using namespace std;

struct Process {
    int pid;
    int at; // Arrival Time
    int bt; // Burst Time
};

bool compareArrival(Process a, Process b) {
    return a.at < b.at;
}

void LCFS_Scheduling(Process proc[], int n) {
    // Sort processes based on arrival time in descending order
    sort(proc, proc + n, compareArrival);
    reverse(proc, proc + n);

    int currentTime = 0;
    int ct[n], tat[n], wt[n];
    int totalWT = 0, totalTAT = 0;

    for (int i = 0; i < n; i++) {
        if (proc[i].at > currentTime) {
            currentTime = proc[i].at;
        }
        ct[i] = currentTime + proc[i].bt;
        currentTime = ct[i];
    }

    // Calculate turnaround time and waiting time
    for (int i = 0; i < n; i++) {
        tat[i] = ct[i] - proc[i].at;
        wt[i] = tat[i] - proc[i].bt;
        totalTAT += tat[i];
        totalWT += wt[i];
    }

    // Print the scheduling result
    cout << "Process\tArrival\tBurst\tCompletion\tTurnaround\tWaiting" << endl;
    for (int i = 0; i < n; i++) {
        cout << proc[i].pid << "\t" << proc[i].at << "\t" << proc[i].bt << "\t" << ct[i] << "\t\t" << tat[i] << "\t\t" << wt[i] << endl;
    }

    // Print average turnaround time and average waiting time
    cout << "Average Turnaround Time: " << (float)totalTAT / n << endl;
    cout << "Average Waiting Time: " << (float)totalWT / n << endl;
}

int main() {
    cout << "Last Come First Serve Scheduling" << endl;
    int n;
    cout << "Enter the number of processes: ";
    cin >> n;

    Process proc[n];
    for (int i = 0; i < n; i++) {
        cout << "Enter Arrival Time and Burst Time for Process " << i + 1 << ": ";
        cin >> proc[i].at >> proc[i].bt;
        proc[i].pid = i + 1;
    }

    LCFS_Scheduling(proc, n);

    return 0;
}
