import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor Token {

    var owner : Principal = Principal.fromText("kqnaf-sm4gj-6spit-7monj-2ftnh-lfbr5-dhhnn-4moyj-mmqdd-enw5d-tae");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "DEASY";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal) : async Nat {
        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result;
        };

        return balance;
    };
};