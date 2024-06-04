Deploy canister

### dfx deploy

default principal

maxLimit = 10000
data = 
logo_type = image/png
name = SDGs NFT
symbol = SDGS

### nft asset path

Frontend canister path/1.png , 2.png, till 17.png

### mint from dip721

dfx canister call dip721_nft_container mintDip721 "(
  principal\"$(dfx identity get-principal)\", 
  vec { 
    record {
      purpose = variant{Rendered};
      data = blob\"SDGs\";
      key_val_data = vec {
        record { key = \"uri\"; val = variant{TextContent=\"http://bw4dl-smaaa-aaaaa-qaacq-cai.localhost:4943/4.png\"}; };
      }
    }
  }
)"

### mint from minter

dfx canister call minter mintNFT "(
    record {
        _to = \"yipel-lrims-lv3xy-jbbaz-s37vp-aohv2-emhnk-k6pe4-xhfzj-efvwb-wae\";
        _number = \"3\"
    }
)"
