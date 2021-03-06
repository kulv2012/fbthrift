{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------

module My.Namespacing.Extend.Test.ExtendTestService where
import Prelude ( Bool(..), Enum, Float, IO, Double, String, Maybe(..),
                 Eq, Show, Ord,
                 concat, error, fromIntegral, fromEnum, length, map,
                 maybe, not, null, otherwise, return, show, toEnum,
                 enumFromTo, Bounded, minBound, maxBound, seq, succ,
                 pred, enumFrom, enumFromThen, enumFromThenTo,
                 (.), (&&), (||), (==), (++), ($), (-), (>>=), (>>))

import qualified Control.Applicative as Applicative (ZipList(..))
import Control.Applicative ( (<*>) )
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad ( liftM, ap, when )
import qualified Data.ByteString.Lazy as BS
import Data.Functor ( (<$>) )
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import Data.List
import qualified Data.Maybe as Maybe (catMaybes)
import qualified Data.Text.Lazy.Encoding as Encoding ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified Data.Typeable as Typeable ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as Arbitrary ( Arbitrary(..) )
import qualified Test.QuickCheck as QuickCheck ( elements )

import qualified Thrift
import qualified Thrift.Types as Types
import qualified Thrift.Serializable as Serializable
import qualified Thrift.Arbitraries as Arbitraries

import qualified My.Namespacing.Test.Hsmodule_Types as Hsmodule_Types


import qualified My.Namespacing.Test.HsTestService
import qualified My.Namespacing.Extend.Test.Extend_Types
import qualified My.Namespacing.Extend.Test.ExtendTestService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

-- | Definition of the Check_args struct
data Check_args = Check_args
  { check_args_struct1 :: Hsmodule_Types.HsFoo
    -- ^ struct1 field of the Check_args struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable Check_args where
  encode = encode_Check_args
  decode = decode_Check_args
instance Hashable.Hashable Check_args where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` check_args_struct1 record  
instance DeepSeq.NFData Check_args where
  rnf _record0 =
    DeepSeq.rnf (check_args_struct1 _record0) `seq`
    ()
instance Arbitrary.Arbitrary Check_args where 
  arbitrary = Monad.liftM Check_args (Arbitrary.arbitrary)
  shrink obj | obj == default_Check_args = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_Check_args{check_args_struct1 = check_args_struct1 obj} then Nothing else Just $ default_Check_args{check_args_struct1 = check_args_struct1 obj}
    ]
-- | Translate a 'Check_args' to a 'Types.ThriftVal'
from_Check_args :: Check_args -> Types.ThriftVal
from_Check_args record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("struct1",Hsmodule_Types.from_HsFoo _v3))) $ check_args_struct1 record
  ]
-- | Write a 'Check_args' with the given 'Thrift.Protocol'
write_Check_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Check_args -> IO ()
write_Check_args oprot record = Thrift.writeVal oprot $ from_Check_args record
-- | Serialize a 'Check_args' in pure code
encode_Check_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Check_args -> BS.ByteString
encode_Check_args oprot record = Thrift.serializeVal oprot $ from_Check_args record
-- | Translate a 'Types.ThriftVal' to a 'Check_args'
to_Check_args :: Types.ThriftVal -> Check_args
to_Check_args (Types.TStruct fields) = Check_args{
  check_args_struct1 = maybe (check_args_struct1 default_Check_args) (\(_,_val5) -> (case _val5 of {Types.TStruct _val6 -> (Hsmodule_Types.to_HsFoo (Types.TStruct _val6)); _ -> error "wrong type"})) (Map.lookup (1) fields)
  }
to_Check_args _ = error "not a struct"
-- | Read a 'Check_args' struct with the given 'Thrift.Protocol'
read_Check_args :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO Check_args
read_Check_args iprot = to_Check_args <$> Thrift.readVal iprot (Types.T_STRUCT typemap_Check_args)
-- | Deserialize a 'Check_args' in pure code
decode_Check_args :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> Check_args
decode_Check_args iprot bs = to_Check_args $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_Check_args) bs
-- | 'TypeMap' for the 'Check_args' struct
typemap_Check_args :: Types.TypeMap
typemap_Check_args = Map.fromList [("struct1",(1,(Types.T_STRUCT Hsmodule_Types.typemap_HsFoo)))]
-- | Default values for the 'Check_args' struct
default_Check_args :: Check_args
default_Check_args = Check_args{
  check_args_struct1 = Hsmodule_Types.default_HsFoo}
-- | Definition of the Check_result struct
data Check_result = Check_result
  { check_result_success :: Bool
    -- ^ success field of the Check_result struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable Check_result where
  encode = encode_Check_result
  decode = decode_Check_result
instance Hashable.Hashable Check_result where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` check_result_success record  
instance DeepSeq.NFData Check_result where
  rnf _record7 =
    DeepSeq.rnf (check_result_success _record7) `seq`
    ()
instance Arbitrary.Arbitrary Check_result where 
  arbitrary = Monad.liftM Check_result (Arbitrary.arbitrary)
  shrink obj | obj == default_Check_result = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_Check_result{check_result_success = check_result_success obj} then Nothing else Just $ default_Check_result{check_result_success = check_result_success obj}
    ]
-- | Translate a 'Check_result' to a 'Types.ThriftVal'
from_Check_result :: Check_result -> Types.ThriftVal
from_Check_result record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v10 -> Just (0, ("success",Types.TBool _v10))) $ check_result_success record
  ]
-- | Write a 'Check_result' with the given 'Thrift.Protocol'
write_Check_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Check_result -> IO ()
write_Check_result oprot record = Thrift.writeVal oprot $ from_Check_result record
-- | Serialize a 'Check_result' in pure code
encode_Check_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> Check_result -> BS.ByteString
encode_Check_result oprot record = Thrift.serializeVal oprot $ from_Check_result record
-- | Translate a 'Types.ThriftVal' to a 'Check_result'
to_Check_result :: Types.ThriftVal -> Check_result
to_Check_result (Types.TStruct fields) = Check_result{
  check_result_success = maybe (check_result_success default_Check_result) (\(_,_val12) -> (case _val12 of {Types.TBool _val13 -> _val13; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_Check_result _ = error "not a struct"
-- | Read a 'Check_result' struct with the given 'Thrift.Protocol'
read_Check_result :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO Check_result
read_Check_result iprot = to_Check_result <$> Thrift.readVal iprot (Types.T_STRUCT typemap_Check_result)
-- | Deserialize a 'Check_result' in pure code
decode_Check_result :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> Check_result
decode_Check_result iprot bs = to_Check_result $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_Check_result) bs
-- | 'TypeMap' for the 'Check_result' struct
typemap_Check_result :: Types.TypeMap
typemap_Check_result = Map.fromList [("success",(0,Types.T_BOOL))]
-- | Default values for the 'Check_result' struct
default_Check_result :: Check_result
default_Check_result = Check_result{
  check_result_success = False}
process_check (seqid, iprot, oprot, handler) = do
  args <- ExtendTestService.read_Check_args iprot
  (Exception.catch
    (do
      val <- Iface.check handler (check_args_struct1 args)
      let res = default_Check_result{check_result_success = val}
      Thrift.writeMessage oprot ("check", Types.M_REPLY, seqid) $
        write_Check_result oprot res
      Thrift.tFlush (Thrift.getTransport oprot))
    ((\_ -> do
      Thrift.writeMessage oprot ("check", Types.M_EXCEPTION, seqid) $
        Thrift.writeAppExn oprot (Thrift.AppExn Thrift.AE_UNKNOWN "")
      Thrift.tFlush (Thrift.getTransport oprot)) :: Exception.SomeException -> IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "check" -> process_check (seqid,iprot,oprot,handler)
  _ -> My.Namespacing.Test.HsTestService.proc_ handler (iprot,oprot) (name,typ,seqid)
process handler (iprot, oprot) =
  Thrift.readMessage iprot (proc_ handler (iprot,oprot)) >> return True
