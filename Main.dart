import datetime

class Member:
    def __init__(self, name, phone_number):
        self.name = name
        self.phone_number = phone_number
        self.transactions = []
        self.penalties = 0

    def add_transaction(self, amount, mode, payment_means, code, date):
        transaction = {
            'amount': amount,
            'mode': mode,
            'payment_means': payment_means,
            'code': code,
            'date': date
        }
        self.transactions.append(transaction)

    def add_penalty(self, penalty_amount):
        self.penalties += penalty_amount


class Tracker:
    def __init__(self):
        self.members = []

    def add_member(self, name, phone_number):
        member = Member(name, phone_number)
        self.members.append(member)
        print(f"Added member: {name}, Phone: {phone_number}")

    def record_payment(self, name, amount, mode, payment_means, code, date):
        member = self.find_member(name)
        if member:
            member.add_transaction(amount, mode, payment_means, code, date)
            print(f"Recorded payment of {amount} by {name} on {date}")
        else:
            print(f"Member {name} not found")

    def apply_penalty(self, name, penalty_amount):
        member = self.find_member(name)
        if member:
            member.add_penalty(penalty_amount)
            print(f"Applied penalty of {penalty_amount} to {name}")
        else:
            print(f"Member {name} not found")

    def send_notification(self, name, message):
        member = self.find_member(name)
        if member:
            print(f"Sending notification to {member.phone_number}: {message}")
        else:
            print(f"Member {name} not found")

    def find_member(self, name):
        for member in self.members:
            if member.name == name:
                return member
        return None

    def view_member_info(self, name):
        member = self.find_member(name)
        if member:
            print(f"Member: {member.name}, Phone: {member.phone_number}")
            print(f"Total Penalties: {member.penalties}")
            print("Transactions:")
            for t in member.transactions:
                print(f"  {t['date']}: {t['amount']} via {t['mode']} ({t['payment_means']}) - Code: {t['code']}")
        else:
            print(f"Member {name} not found")


# Example usage
tracker = Tracker()
tracker.add_member("Alice", "+123456789")
tracker.record_payment("Alice", 100, "Mobile Money", "M-Pesa", "TXN12345", datetime.date(2025, 2, 24))
tracker.apply_penalty("Alice", 20)
tracker.send_notification("Alice", "You have a penalty of 20 KES for late payment.")
tracker.view_member_info("Alice")

# Save this as main.dart in your Flutter project!

# Let me know if you want me to help set up the Flutter project structure! 🚀
initial commit
