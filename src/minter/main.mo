import Principal "mo:base/Principal";
import Dip721NFT "canister:dip721_nft_container";
import Types "canister:dip721_nft_container";
import Bool "mo:base/Bool";
import Nat "mo:base/Nat";

actor Main {

    public type Goal = Nat;

    public func mintNFT({
        _to : Text;
        _number : Text;
    }) : async Bool {
        var to : Principal = Principal.fromText(_to);

        let prefix : Text = "http://bw4dl-smaaa-aaaaa-qaacq-cai.localhost:4943/"; 
        let suffix : Text = ".png";
        let uri : Text = prefix # _number # suffix;

        let metadata : Types.MetadataDesc = [{
            purpose = #Rendered;
            data = []; 
            key_val_data = [
                {
                key = "uri";
                val = #TextContent uri;
                },
            ];
            }];

        var res = await Dip721NFT.mintDip721(to, metadata);
      
        return true;
    };

};