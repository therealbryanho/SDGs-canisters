export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'mintNFT' : IDL.Func(
        [IDL.Record({ '_to' : IDL.Text, '_number' : IDL.Text })],
        [IDL.Bool],
        [],
      ),
  });
};
export const init = ({ IDL }) => { return []; };
